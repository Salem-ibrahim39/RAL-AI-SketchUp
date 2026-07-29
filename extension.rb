require 'sketchup.rb'

module RALAI

  PLUGIN_PATH = File.join(__dir__, "src", "ui.html")

  def self.show

    dialog = UI::HtmlDialog.new(
      dialog_title: "RAL AI",
      preferences_key: "RALAI",
      width: 450,
      height: 700,
      resizable: true,
      style: UI::HtmlDialog::STYLE_DIALOG
    )

    dialog.set_file(PLUGIN_PATH)

    dialog.show

  end

  unless file_loaded?(__FILE__)

    UI.menu("Extensions").add_item("🤖 RAL AI") {
      self.show
    }

    file_loaded(__FILE__)

  end

end