class Api::V1::DisciplinesController < ApplicationController
    def index #mostra todas as disciplinas quando invocado
        disciplines = Discipline.select('name','code').order(:name, :code)
        render json: disciplines, status: :ok
    end

    def show #mostra uma disciplina especifica quando invocado
        discipline = Discipline.find(params[:id])
        render json: discipline, status: :ok
    rescue StandardError #caso exista uma busca com uma disciplina que não existe
        head(:not_found)
    end
end
