# -*- coding: utf-8 -*- #

module Rouge
  module Themes
    class Turnpike < CSSTheme
      name 'turnpike'

      # suggested colors from https://alexbeals.com/projects/colorize
      palette :turnpike       => '#889088'
      palette :alert          => '#D9A894'
      palette :stopsign       => '#C98186'
      palette :grass_green    => '#4D9226'
      palette :pavement       => '#848383'
      palette :billboard      => '#94A6B1'
      palette :rabbit         => '#ABAB8B'
      palette :water          => '#95BFDA'
      palette :starting_line  => '#8E726B'
      palette :tires          => '#7C7C7D'
      palette :smile          => '#D5CE81'
      palette :toll           => '#7E8D8F'
      palette :black          => '#0E0D0E'
      palette :honking        => '#9F8C84'
      palette :dark           => '#171819'
      palette :siren          => '#4D5356'
      palette :marsh          => '#808774'
      palette :cranberry      => '#BC8887'
      palette :pond           => '#697969'
      palette :clouds         => '#7B9ABF'
      palette :dark_bat       => '#524C4B'
      # other colors
      palette :roadkill       => '#7D4E03'

      style Text, :fg => :honking, :bg => :dark
      style Generic::Lineno, :fg => :billboard, :bg => :dark

      style Comment, :fg => :siren, :italic => true
      style Comment::Preproc, :fg => :tires, :bold => true, :italic => true
      style Error,
            Generic::Error, :fg => :alert, :bg => :stopsign
      style Keyword, :fg => :starting_line, :bold => true
      style Operator,
            Punctuation, :fg => :backlit
      style Generic::Deleted, :fg => :roadkill
      style Generic::Inserted, :fg => :marsh
      style Generic::Emph, :italic => true
      style Generic::Strong, :bold => true
      style Generic::Traceback, :fg => :turnpike, :bg => :dark_bat
      style Keyword::Constant, :fg => :rabbit, :bold => true
      style Keyword::Namespace,
            Keyword::Pseudo,
            Keyword::Reserved,
            Generic::Heading,
            Generic::Subheading, :fg => :water, :bold => true
      style Keyword::Type,
            Name::Constant,
            Name::Class,
            Name::Decorator,
            Name::Namespace,
            Name::Builtin::Pseudo,
            Name::Exception, :fg => :stopsign, :bold => true
      style Name::Label,
            Name::Tag, :fg => :rabbit, :bold => true
      style Literal::Number,
            Literal::Date,
            Literal::String::Symbol, :fg => :smile, :bold => true
      style Literal::String, :fg => :toll, :bold => true
      style Literal::String::Escape,
            Literal::String::Char,
            Literal::String::Interpol, :fg => :toll, :bold => true
      style Name::Builtin, :bold => true, :fg => :green_grass
      style Name::Entity, :fg => :pavement, :bold => true
      style Text::Whitespace, :fg => :honking
      style Name::Function,
            Name::Property,
            Name::Attribute, :fg => :clouds
      style Name::Variable, :fg => :clouds, :bold => true
    end
  end
end
