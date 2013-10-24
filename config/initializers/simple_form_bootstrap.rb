# Use this setup block to configure all options available in SimpleForm.
SimpleForm.setup do |config|

  config.wrappers :checkbox_wrapper, tag: 'div', class: 'form-group', error_class: 'error' do |b|
    b.use :html5
    b.use :placeholder
    b.wrapper tag: 'div', class: 'col-lg-offset-2 col-lg-10' do |input|
      input.wrapper tag: 'div', class: 'checkbox' do |checkbox_wrapper|
        checkbox_wrapper.use :label
        checkbox_wrapper.use :input
      end
      input.use :hint,  wrap_with: { tag: 'span', class: 'help-block' }
      input.use :error, wrap_with: { tag: 'span', class: 'help-inline' }
    end
  end

  config.wrappers :button_wrapper, tag: 'div', class: 'form-group' do |b|
    b.use :html5
    b.wrapper tag: 'div', class: 'col-lg-offset-2 col-lg-10' do |input|
      input.use :input, class: ['btn-default']
    end
  end

  config.wrappers :bootstrap, tag: 'div', class: 'form-group', error_class: 'error' do |b|
    b.use :html5
    b.use :placeholder
    b.use :label
    b.wrapper tag: 'div', class: 'col-lg-10' do |ba|
      ba.use :input
      ba.use :hint,  wrap_with: { tag: 'p', class: 'help-block' }
      ba.use :error, wrap_with: { tag: 'span', class: 'help-inline' }
    end
  end

  config.wrappers :text_wrapper, tag: 'div', class: 'form-group', error_class: 'error' do |b|
    b.use :html5
    b.use :placeholder
    b.use :label, class: ['col-lg-2', 'control-label']
    b.wrapper tag: 'div', class: 'col-lg-10' do |input|
      input.use :input, class: ['form-control']
      input.use :hint,  wrap_with: { tag: 'span', class: 'help-block' }
      input.use :error, wrap_with: { tag: 'span', class: 'help-inline' }
    end
  end

  config.wrappers :prepend, tag: 'div', class: 'form-group', error_class: 'error' do |b|
    b.use :html5
    b.use :placeholder
    b.use :label, class: ['col-lg-2', 'control-label']
    b.wrapper tag: 'div', class: 'controls' do |input|
      input.use :input
      input.use :hint,  wrap_with: { tag: 'span', class: 'help-block' }
      input.use :error, wrap_with: { tag: 'span', class: 'help-inline' }
    end
  end

  config.wrappers :append, tag: 'div', class: 'form-group', error_class: 'error' do |b|
    b.use :html5
    b.use :placeholder
    b.use :label, class: ['col-lg-2', 'control-label']
    b.wrapper tag: 'div', class: 'controls' do |input|
      input.use :input
      input.use :hint,  wrap_with: { tag: 'span', class: 'help-block' }
      input.use :error, wrap_with: { tag: 'span', class: 'help-inline' }
    end
  end

  # Wrappers for forms and inputs using the Twitter Bootstrap toolkit.
  # Check the Bootstrap docs (http://twitter.github.com/bootstrap)
  # to learn about the different styles for forms and inputs,
  # buttons and other elements.
  config.default_wrapper = :bootstrap
  config.wrapper_mappings = { boolean: :checkbox_wrapper, string: :text_wrapper }
end
