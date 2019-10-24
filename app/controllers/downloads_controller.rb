class DownloadsController < ApplicationController
  def isoone
    send_file "#{Rails.root}/app/assets/downloads/Certificado_ISO_9001_2015_to_2021.pdf", :type => 'application/pdf', :disposition => 'attachment'
  end

  def isotwo
    send_file "#{Rails.root}/app/assets/downloads/Certificado_ISO_14001_2015_to_2020.pdf", :type => 'pdf', :disposition => 'attachment'

  end

  def isothree
    send_file "#{Rails.root}/app/assets/downloads/Certificado_ISO_45001_2018_to_2021.pdf", :type => 'pdf', :disposition => 'attachment'

  end

  def quality
    send_file "#{Rails.root}/app/assets/downloads/Politica_Integrada.pdf", :type => 'pdf', :disposition => 'attachment'
  end
end
