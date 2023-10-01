@extends('layouts.master')

@section('contenu')
    <div class="my-3 p-3 bg-body rounded shadow-sm">
        <h3 class="border-bottom pb-2 mb-4">Ajout d'un nouvel etudiant</h3>

        {{-- Pour les messages d'erreurs --}}
        <div class="mt-4">
            @if (session()->get('success'))
                <div class="alert alert-success">
                    {{ session()->get('success') }}
                </div>
            @endif

            @if ($errors->any())
                <div class="alert alert-danger">
                    <ul>
                        @foreach ($errors->all() as $error)
                            <li>
                                {{ $error }}
                            </li>
                        @endforeach
                    </ul>
                </div>
            @endif
            <form style="width: 65%;" method="POST" action="{{ route('etudiant.ajouter') }}">

                @csrf

                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Nom de l'étudiant</label>
                    <input type="text" class="form-control" name="nom">
                </div>
                <div class="mb-3">
                    <label for="exampleInputPassword1" class="form-label">Prénom</label>
                    <input type="text" class="form-control" name="prenom">
                </div>
                <div class="mb-3">
                    <label for="exampleInputPassword1" class="form-label">Classe</label>
                    <select class="form-control" name="classe_id">
                        <option value=""></option>
                        @foreach ($classes as $classe)
                            <option value="{{ $classe->id }}">{{ $classe->libelle }}</option>
                        @endforeach
                    </select>
                </div>
                <button type="submit" class="btn btn-primary">Enregistrer</button>
                <a href="{{ route('etudiant') }}" class="btn btn-danger">Annuler</a>

            </form>
        </div>

    </div>

@endsection
