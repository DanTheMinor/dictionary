class Definition
  @@all_def = [] #two dimensional array of words and their definitions
  attr_reader(:definition, :id)

  define_method(:initialize) do |definition|
    @definition = definition
    @id = @@all_def.length() + 1
  end

  define_method(:add_def) do |definition|
    @definitions.push(definition)
  end

  define_method(:save) do
      @@all_def.push(self)
  end

  define_singleton_method(:all) do
    @@all_def
  end

  define_singleton_method(:clear) do
    @@all_def = []
  end

  define_singleton_method(:find) do |identify|
    found_def = nil
    @@all_def.each() do |definition|
      found_def = definition if definition.id() == identify.to_i()
    end
    return found_def
  end

end
