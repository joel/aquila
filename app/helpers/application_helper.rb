module ApplicationHelper

  def destroy_button path
    link_to path, method: :delete, data: destroy_data, class: 'btn btn-mini btn-danger' do
      t('.destroy', default: t('helpers.links.destroy'))
    end
  end

  private

  def destroy_data
    { confirm: t('.confirm', default: t('helpers.links.confirm')) }
  end

end
