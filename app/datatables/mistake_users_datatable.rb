class MistakeUsersDatatable < Datatable
    delegate :edit_mistake_path, to: :@view
    delegate :mistake_path, to: :@view
      def as_json(_options = {})
        {
          data: data,
          draw: params[:draw].to_i,
          recordsTotal: MistakeUsers.count,
          recordsFiltered: mistake_users.length
        }
      end
      private
      def data
        mistake_users.map do |mistake|
          [
            mistake_user.id,
            mistake_user.user_id,
            mistake_user.user_id.name,
            mistake.user_id.email,
          ]
        end
      end
      def columns
        @columns ||= %w['' '']
      end
      def mistake_users
        @mistake_users ||= fetch_mistake_users
      end
      def fetch_mistake_users
        mistake_users = MistakeUsers.all
        mistake_users
      end
    end