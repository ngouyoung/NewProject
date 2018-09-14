@extends('admin.master')

@section('content-title')
    <!-- Breadcrumbs-->
    <ul class="breadcrumb">
        <li class="breadcrumb-item">
            <a href="{{ route('admin.categories') }}">Categories</a>
        </li>
        <li class="breadcrumb-item active">Overview</li>
        <li style="margin-left: auto">
            @can('role-create')
                <a class="breadcrumb-btn btn btn-success" href="{{ route('admin.categories.create') }}"> Create Categories</a>
            @endcan
        </li>
    </ul>
    @endsection

@section('content')
    @if ($message = Session::get('success'))
        <div class="alert alert-success">
            <span>{{ $message }}</span>
        </div>
    @endif
    <table id="example" class="table table-striped table-bordered" style="width:100%">
        <thead>
            <tr>
                <th>Name</th>
                <th>slug</th>
                <th>description</th>
                <th>Create At</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
        @foreach ($categories as $key => $category)
            <tr>
                <td>{{ $category->name }}</td>
                <td>{{ $category->slug }}</td>
                <td>
                    {{ $category->description }}
                </td>
                <td>
                    {{ $category->created_at }}
                </td>
                <td>
                    {{--<a class="btn btn-sm btn-success" href="{{ route('admin.categories.view',$category->id) }}">Show</a>--}}
                    {{--@can('user-edit')--}}
                        <a class="btn btn-sm btn-info" href="{{ route('admin.categories.edit',$category->id) }}">Edit</a>
                    {{--@endcan--}}
                    {{--@can('user-delete')--}}
                        {{--{!! Form::open(['method' => 'DELETE','route' => ['admin.categories.destroy',$category->id],'style'=>'display:inline']) !!}--}}
                        {{--{!! Form::submit('Delete', ['class' => 'btn btn-sm btn-danger','onclick' => 'return alert()']) !!}--}}
                        {{--{!! Form::close() !!}--}}
                    {{--@endcan--}}
                </td>
            </tr>
        @endforeach
        </tbody>
    </table>
    @endsection
@push('scripts')
    <script type="text/javascript">
        $(document).ready(function() {
            $('#example').DataTable({
                "columnDefs": [
                    {
                        "orderable": false, "targets": 3
                    }
                ]
            });
        } );
    </script>
    <script>
        function alert() {
            if(confirm('Are you sure you want to delete this user?')){
                return true;
            }else {
                return false;
            }
        }
    </script>
@endpush