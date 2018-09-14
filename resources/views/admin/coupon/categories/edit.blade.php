@extends('admin.master')
@section('content-title')
    <ul class="breadcrumb">
        <li class="breadcrumb-item">
            <a href="{{ route('admin.users') }}">User</a>
        </li>
        <li class="breadcrumb-item active">Edit</li>
    </ul>
@endsection

@section('content')
    @if (count($errors) > 0)
        <div class="alert alert-danger">
            <strong>Whoops!</strong> There were some problems with your input.<br><br>
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif

    {!! Form::model($categories, ['method' => 'PATCH','route' => ['admin.categories.update', $categories->id]]) !!}
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12">
            <div class="form-group">
                <strong>Name:</strong>
                {!! Form::text('name', null, array('placeholder' => 'Name','class' => 'form-control')) !!}
            </div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-12">
            <div class="form-group">
                <strong>Slug:</strong>
                {!! Form::text('slug', null, array('placeholder' => 'Email','class' => 'form-control')) !!}
            </div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-12">
            <div class="form-group">
                <strong>Description:</strong>
                {!! Form::textarea('description', null, array('placeholder' => 'Email','class' => 'form-control')) !!}
            </div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-12 text-right">
            <a href="{{ route('admin.users') }}" class="btn btn-success">Back</a>
            <button type="submit" class="btn btn-success" onclick="return confirm('You want to update this user?')">Submit</button>
        </div>
    </div>
    {!! Form::close() !!}

@endsection