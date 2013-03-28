module AppsHelper

      FRAMEWORKS = {

        'Rails'    => ['rails3',  { :mem => '256M', :description => 'Rails Application', :console=>true}],
        'Spring'   => ['spring',  { :mem => '512M', :description => 'Java SpringSource Spring Application'}],
        'Grails'   => ['grails',  { :mem => '512M', :description => 'Java SpringSource Grails Application'}],
        'Lift'   =>   ['lift',    { :mem => '512M', :description => 'Scala Lift Application'}],
        'JavaWeb'  => ['java_web',{ :mem => '512M', :description => 'Java Web Application'}],
        'Standalone'     => ['standalone',    { :mem => '64M', :description => 'Standalone Application'}],
        'Sinatra'  => ['sinatra', { :mem => '128M', :description => 'Sinatra Application'}],
        'Node'     => ['node',    { :mem => '64M',  :description => 'Node.js Application'}],
        'PHP'      => ['php',     { :mem => '128M', :description => 'PHP Application'}],
        'Erlang/OTP Rebar' => ['otp_rebar',  { :mem => '64M',  :description => 'Erlang/OTP Rebar Application'}],
        'WSGI'     => ['wsgi',    { :mem => '64M',  :description => 'Python WSGI Application'}],
        'Django'   => ['django',  { :mem => '128M', :description => 'Python Django Application'}],
        'dotNet'   => ['dotNet',  { :mem => '128M', :description => '.Net Web Application'}],
        'Rack'     => ['rack', { :mem => '128M', :description => 'Rack Application'}],
        'Play'     => ['play',  { :mem => '256M', :description => 'Play Framework Application'}]
    }


 end
