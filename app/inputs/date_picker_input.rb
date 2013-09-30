class DatePickerInput < SimpleForm::Inputs::Base
  def input
    date = (@builder.object[attribute_name] rescue nil)
    date ||= options[:default] if options[:default]

    date = date.strftime('%d/%m/%Y') unless date.blank?
    js_node_id = input_html_options[:id] || "#{object_name}_#{attribute_name}_#{SecureRandom.hex(5)}"
    element_class = options[:input_html][:class] rescue ''
    
    template.content_tag :div, class: 'input-append date' do
      @builder.text_field(attribute_name, input_html_options.merge(value: date, pattern: '\d{2}\/\d{2}\/\d{4}', class: "input-medium datepicker #{element_class}", 'data-datepicker-id' => js_node_id, placeholder: 'dd/mm/yyyy')) +
      template.content_tag(:span, class: 'add-on') do
        template.content_tag :i, '', class: 'icon-calendar'
      end + js_code(js_node_id).html_safe
    end
  end

  # in the special case of nested_attributes form, I don't know how to dynamically
  # grab the ID of the field so I resolve to using a special attribute data-datepicker-id for the job instead
  def js_code(node_id)
    <<-eos
      <script type="text/javascript">
        $(function() {
          $("[data-datepicker-id='#{node_id}']").datepicker({
            format: 'dd/mm/yyyy',
            autoclose: true,
            forceParse: false
          });
          $(".add-on").on('click', function(){
            $(this).prev().focus();
          });
        });
      </script>
    eos
  end
end
