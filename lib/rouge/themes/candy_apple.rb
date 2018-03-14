# -*- coding: utf-8 -*- #

module Rouge
  module Themes
    # Based on the pastie layout
    class CandyApple < CSSTheme
      name 'candy_apple' 

      palette :candy_apple     => '#ca0000' # red
      palette :firefly         => '#ff0000' # bright red
      palette :live_oak        => '#ffbb45' # strong yellow | '#dd513a' # orange red
      palette :soft_oak        => '#d66730' # mellow orange
      palette :soft_bark       => '#ad7458' # light brown
      palette :young_wood      => '#937566' # faded light brown
      palette :dry_path        => '#5c4f49' # brown grey
      palette :pumpkin         => '#ff6000' # orange
      palette :peach_cream     => '#ff8f4b' # peach
      palette :maple_red       => '#b42710' # red
      palette :raspberry       => '#6d071d' # pinkish red
      palette :goldwood        => '#c48c44' # yellow
      palette :faded_sky       => '#4a4c56' # grey blue
      palette :winter_clouds   => '#bfc4cb' # bright grey blue
      palette :apple_core      => '#9f9055' # yellow
      palette :red_delicious   => '#8b2121' # red
      palette :sugar_beets     => '#c3746a' # light faded red
      palette :sweethearts     => '#ff828e' # pink
      palette :ace_of_spades   => '#040835' # dark rich blue
      palette :peach_fuzz      => '#e4cbbf' # bright faded orange
      palette :sour_apple      => '#d2ff00' # bright yellow green
      palette :granny_smith    => '#69ca74' # mellow green
      palette :holly           => '#2e7b37' # mellow green
      palette :cherry          => '#a60505' # medium red
      palette :wet_hay         => '#644508' # medium dark orange yellow
      palette :last_violet     => '#ff33fd' # bright violet
      palette :bold_river      => '#0f6a90' # medium blue
      palette :autumn_breeze   => '#1ec2cc' # medium light teal
      palette :promise         => '#8358ff' # medium purple | '#5887ff' # faded medium blue
      palette :sidewalk        => '#eae0c5' # bright faded orange yellow

      style Comment,                   :fg => :dry_path
      style Comment::Preproc,          :fg => :faded_sky
      style Comment::Special,          :fg => :dry_path, :bg => :ace_of_spades, :bold => true

      style Error,                     :fg => :sour_apple
      style Generic::Error,            :fg => :sour_apple

      style Generic::Heading,          :fg => :firefly
      style Generic::Subheading,       :fg => :sugar_beets

      style Generic::Deleted,          :fg => '#000000', :bg => :granny_smith
      style Generic::Inserted,         :fg => '#000000', :bg => :apple_core

      style Generic::Emph,             :italic => true
      style Generic::Strong,           :bold => true

      style Generic::Lineno,           :fg => :holly
      style Generic::Output,           :fg => :granny_smith
      style Generic::Prompt,           :fg => :granny_smith
      style Generic::Traceback,        :fg => :pumpkin

      style Keyword,                   :fg => :live_oak, :bold => true
      style Keyword::Pseudo,           :fg => :live_oak
      style Keyword::Type,             :fg => :bold_river, :bold => true
      style Keyword::Reserved,         :fg => :maple_red, :bold => true

      # style Name,                    :fg => :young_wood
      style Name::Attribute,           :fg => :raspberry
      style Name::Builtin,             :fg => :soft_bark
      style Name::Class,               :fg => :cherry, :bold => true
      style Name::Constant,            :fg => :wet_hay, :bold => true
      # style Name::Decorator,           :fg => ?
      style Name::Exception,           :fg => :last_violet, :bold => true
      style Name::Function,            :fg => :sidewalk, :bold => true
      style Name::Label,               :fg => :sweethearts
      style Name::Namespace,           :fg => :young_wood
      style Name::Property,            :fg => :young_wood, :italic => true
      style Name::Tag,                 :fg => :young_wood, :bold => true, :italic => true
      style Name::Variable,            :fg => :peach_cream
      style Name::Variable::Global,    :fg => :soft_oak
      style Name::Variable::Instance,  :fg => :peach_cream, :italic => true

      style Num,                       :fg => :autumn_breeze
      style Num::Integer,              :fg => :autumn_breeze
      style Num::Float,                :fg => :promise

      style Str,                       :fg => :goldwood
      style Str::Escape,               :fg => :goldwood, :bg => :ace_of_spades
      # style Str::Interpol,             :fg => ?
      # style Str::Other,                :fg => ?
      # style Str::Regex,                :fg => ?
      # style Str::Symbol,               :fg => ?

      style Operator,                  :fg => :red_delicious, :bold => true
      # style Operator::Word,            :fg => ?

      style Punctuation,               :fg => :candy_apple, :bold => true

      style Text,                      :fg => :peach_fuzz # was {}
      style Text::Whitespace,          :fg => :winter_clouds
    end
  end
end
