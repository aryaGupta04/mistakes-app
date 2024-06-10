class MistakesDatatable < Datatable
  delegate :edit_mistake_path, to: :@view
  delegate :mistake_path, to: :@view
    def as_json(_options = {})
      {
        data: data,
        draw: params[:draw].to_i,
        recordsTotal: Mistake.count,
        recordsFiltered: mistakes.length
      }
    end
    private
    def data
      mistakes.map do |mistake|
        [
          mistake.id,
          mistake.name,
          mistake.description,
          mistake.severity,
          mistake.users.count,
          link_to("Show", mistake_path(mistake.id)),
          link_to("Edit", edit_mistake_path(mistake.id)),
          link_to("Delete", mistake_path(mistake.id), method: :delete, data: {confirm:"Are you sure you want to delete this mistake?"})
        ]
      end
    end
    def columns
      @columns ||= %w['' '']
    end
    def mistakes
      @mistakes ||= fetch_mistakes
    end
    def fetch_mistakes
      mistakes = Mistake.all
      mistakes
    end
  end