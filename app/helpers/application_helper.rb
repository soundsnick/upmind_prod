module ApplicationHelper
  def get_language
    cookies[:language] == nil ? Language.find_by(abbr: 'kk') : Language.find_by(abbr: cookies[:language])
  end

  def text(mod, label)
    @module = get_language.template_modules.find_by(label: mod)
    if @module
      @template = @module.templates.find_by(label: label)
      if @template
        @template.title
      else
        "Null template"
      end
    else
      "Null module"
    end
  end

  def not_set_languages
    Language.where.not(abbr: get_language.abbr)
  end
end
