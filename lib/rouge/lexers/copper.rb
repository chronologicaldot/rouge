# -*- coding: utf-8 -*- #

module Rouge
  module Lexers
    class Copper < RegexLexer
      title "Copper"
      desc "The Copper programming language (copperlang.wordpress.com)"

      tag 'copper'
      aliases 'cu'

      filenames '*.cu'

      mimetypes 'text/x-copper', 'application/x-copper'

      def self.keywords
        @keywords ||= Set.new %w(
          stop skip true false
        )
      end

      def self.reserved
        # I have no idea if "reserved" is allowed, but I'm naming it anyway
        @reserved ||= Set.new %w(
          fn if elif else loop this super
        )
      end

      def self.builtins
        @builtins ||= Set.new %w(
          ret not all any nall none are_fn are_empty are_same
          member member_count is_member set_member member_list union
          type_of are_same_type are_bool are_list are_string are_number are_int are_dcml
          assert copy_of
          list append prepend insert item_at erase dump swap replace sublist
          matching concat
        )
      end

      # TODO: Should also allow numbers
      identifier = %r([\w!$%*+<>?/-]+)

      def name_token(name)
        return Keyword::Reserved if self.class.reserved.include?(name)
        return Keyword if self.class.keywords.include?(name)
        return Name::Builtin if self.class.builtins.include?(name)
        nil
      end

      state :comment do
        rule /#/, Comment::Multiline, :pop!
        rule /\\[nrt\#]+/ , Str::Escape
        rule /./, Comment::Multiline
      end

      state :string do
        rule /"/, Str, :pop!
        rule /\\./ , Str::Escape
        rule /./, Str
      end

      state :root do
        # rule /#?:\\(?:)#/m, Comment::Multiline
        rule /#/, Comment::Multiline, :comment

        #rule /#.*?$#/, Comment::Single
        rule /\s+/m, Text::Whitespace

        rule /\d+\.\d*/, Num::Float
        rule /\d+/, Num::Integer
        # rule /0x-?[0-9a-fA-F]+/, Num::Hex

        # rule /"(\\.|[^"])*"/m, Str
        rule(/"/, Str, :string)

        # operators
        rule /~@|[=~.:]/, Operator

        # regular text
        rule identifier do |m|
          token name_token(m[0]) || Name
        end

        # those needless commas
		rule /,/, Punctuation

        # object bodies
        rule /[\[\]]/, Punctuation

        # function bodies
        rule /[{}]/, Punctuation

        # function calls (parentheses)
        rule /[()]/, Punctuation
      end

    end
  end
end
