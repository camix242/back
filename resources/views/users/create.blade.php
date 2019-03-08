@extends('layouts.app')
@section('content')
<div class="row">
    <section class="content">
        <div class="col-md-8 col-md-offset-2">
            @if (count($errors) > 0)
            <div class="alert alert-danger">
                <strong>Error!</strong> Revise los campos obligatorios.<br><br>
                <ul>
                    @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
            @endif
            @if(Session::has('success'))
            <div class="alert alert-info">
                    {{Session::get('success')}}
            </div>
            @endif

            <div class="panel panel-default">
                <div class="panel-heading">
                        <h3 class="panel-title">Nuevo Usuario</h3>
                </div>
                <div class="panel-body">					
                    <div class="table-container">
                        <form method="POST" action="{{ route('users.store') }}"  role="form">
                                {{ csrf_field() }}
                        <div class="row">
                                <div class="col-xs-6 col-sm-6 col-md-6">

                                    <div class="form-group">
                                        <input type="text" name="user_name" id="user_name" class="form-control input-sm input-required" placeholder="Nombre de usuario" required>
                                    </div>
                                </div>
                                <div class="col-xs-6 col-sm-6 col-md-6">
                                    <div class="form-group">
                                        <input type="email" name="email" id="email" class="form-control input-sm input-required" placeholder="Correo electrónico" required>
                                    </div>
                                </div>
                        </div>

                        <div class="row">
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <div class="form-group">
                                    <input type="text" name="name" id="nombre" class="form-control input-sm" placeholder="Nombre del completo" >
                                </div>
                            </div>
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <div class="form-group">
                                    <select  name="city_id" id="city_id" class="form-control input-sm" placeholder="Ciudad">
                                        <option valur="">Selecionar ciudad ...</option> 
                                        @foreach ($cities as $city)
                                            <option value="{{ $city->id }}">{{ $city->city_name }} </option> 
                                        @endforeach
                                    
                                    </select>
                                </div>
                            </div>
                        </div>
                                
                        <div class="row">
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <div class="form-group">
                                    <input type="password"  name="password" id="password" class="form-control input-sm input-required" placeholder="Contraseña" required>
                                </div>
                            </div>
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <div class="form-group">
                                    <input type="password"  name="password_confirm" id="password_confirm" class="form-control input-sm input-required" placeholder="Confirmar contraseña" required>
                                </div>
                            </div>
                        </div>
                        <div class="row">

                            <div class="col-xs-12 col-sm-6 col-md-6">
                                <input type="submit"  value="Guardar" class="btn btn-success btn-block">
                            </div>	
                        
                            <div class="col-xs-12 col-sm-6 col-md-6">
                                <a href="{{ route('users.index') }}" class="btn btn-info btn-block" >Atrás</a>
                            </div>	

                        </div>
                        </form>
                    </div>
                </div>

            </div>
        </div>
    </section>
</div>
@endsection