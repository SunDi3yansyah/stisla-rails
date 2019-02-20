require 'stisla/rails'

module StislaRails
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path('../../../vendor/assets', __dir__)

    def yarn_add_package
      node_modules = ' @fortawesome/fontawesome-free@^5.7.2' +
        ' bootstrap@^4.2.1' +
        ' bootstrap-colorpicker@^3.0.3' +
        ' bootstrap-daterangepicker@^3.0.3' +
        ' bootstrap-social@^5.1.1' +
        ' bootstrap-tagsinput@^0.7.1' +
        ' bootstrap-timepicker@^0.5.2' +
        ' chart.js@^2.7.3' +
        ' chocolat@^0.4.21' +
        ' cleave.js@^1.4.7' +
        ' codemirror@^5.43.0' +
        ' datatables@^1.10.18' +
        ' datatables.net-responsive-bs4@^2.2.3' +
        ' datatables.net-select-bs4@^1.2.7' +
        ' dropzone@^5.5.1' +
        ' flag-icon-css@^3.2.1' +
        ' fullcalendar@^3.10.0' +
        ' gmaps@^0.4.24' +
        ' ionicons201@1.0.0' +
        ' izitoast@^1.4.0' +
        ' jquery@^3.3.1' +
        ' jquery-pwstrength@https://github.com/matoilic/jquery.pwstrength' +
        ' jquery-sparkline@^2.4.0' +
        ' jquery-ui-dist@^1.12.1' +
        ' jquery.nicescroll@^3.7.6' +
        ' jquery_upload_preview@https://github.com/opoloo/jquery_upload_preview' +
        ' jqvmap@https://github.com/10bestdesign/jqvmap' +
        ' moment@^2.24.0' +
        ' nicescroll@^3.7.4' +
        ' owl.carousel@^2.3.4' +
        ' perfect-scrollbar@^1.4.0' +
        ' popper.js@^1.14.7' +
        ' prismjs@^1.15.0' +
        ' select2@^4.0.6-rc.1' +
        ' selectric@^1.13.0' +
        ' simpleweather@^3.1.0' +
        ' sticky-kit@^1.1.3' +
        ' summernote@^0.8.11' +
        ' sweetalert@^2.1.2' +
        ' tooltip.js@^1.3.1' +
        ' weathericons@^2.1.0'

      yarn_or_npm = ask('What you use for dependency management [yarn/npm] ?')

      if yarn_or_npm == 'yarn'
        run('yarn add' + node_modules)
        say 'yarn add modules from template Stisla is successfully', :green

        run('yarn install')
        say 'yarn install is successfully', :green
      elsif yarn_or_npm == 'npm'
        run('npm install' + node_modules)
        say 'npm install modules from template Stisla is successfully', :green

        run('npm install')
        say 'npm install is successfully', :green
      else
        say 'yarn or npm installation is required', :red
      end

    end
  end
end
