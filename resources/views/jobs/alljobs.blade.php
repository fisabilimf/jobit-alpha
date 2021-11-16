@extends('layouts.app')

@section('content')
<div class="container">
    <div class="py-5"></div>    
    <div class="card border-light">
        <form action="{{route('alljobs')}}" method="GET">
            <div class="card-header"><h3 class="display-4 ">Pekerjaan Terbaru</h3></div>
            <div class="card-body justify">
                <div class="row">
                    <div class="col-6"><input type="text" name="title" id="" placeholder="Nama Pekerjaan" class="text-center form-control"></div>
                    <div class="col-6"><input type="text" name="position" id="" placeholder="Posisi" class="text-center form-control"></div>
                </div>
                <div class="row">
                    <div class="py-2"></div>
                </div>
                <div class="row">
                    <div class="col-2">
                        {{-- <input type="text" name="type" id="" placeholder="Tipe Pekerjaan" class="text-center form-control"> --}}
                        <select name="type" id="" class="form-control">
                            <option value="">Tipe Pekerjaan</option>
                            <option value="full">Full-time</option>
                            <option value="part">Part-time</option>
                        </select>
                    </div>
                    <div class="col-5"><input type="text" name="salary_min" id="" placeholder="Gaji Minimum" class="text-center form-control"></div>
                    <div class="col-5"><input type="text" name="salary_max" id="" placeholder="Gaji Maksimum" class="text-center form-control"></div>
                </div>
                <div class="row">
                    <div class="py-2"></div>
                </div>
                <div class="row">
                    <div class="col-10"><input type="text" name="address" id="" placeholder="Daerah Kerja" class="text-center form-control"></div>
                    <div class="col-2"><button class="btn btn-outline-dark text-center form-control">Cari Pekerjaan</button></div>
                </div>
            </div>
        </form>
    </div>
    <div class="py-3"></div>
    <div class="container">
        @foreach($jobs as $job)    
            <div class="shadow p-3 bg-white rounded">
                <div class="row">
                    <div class="col-2 text-center align-self-center">
                        <a href="{{route('jobs.show', [$job->id, $job->slug])}}">
                            <img class="" src="{{asset('avatar')}}/{{$job->company->logo}}" alt="" width="150px">
                        </a>
                    </div>
                    <div class="col">
                        <a href="{{route('jobs.show', [$job->id, $job->slug])}}" class="font-weight-bold h4">{{$job->title}}</a><br>
                        <a href="{{route('jobs.show', [$job->id, $job->slug])}}">{{$job->position}}</a><br>
                        <a href="{{route('company.index', [$job->company->id, $job->company->slug])}}">{{$job->company->cname}}</a> <br>
                        {{ number_format($job->salary_min, 2) }} - {{ number_format($job->salary_max, 2) }} <br>
                        <i class="fa fa-map-marker"></i>&nbsp; {{$job->address}} <br>
                        <i class="fa fa-clock"></i> {{$job->type}} <br>
                        <i class="fa fa-calendar-check"></i> {{$job->created_at->diffForHumans()}}  
                    </div>
                    <div class="col-2 align-self-center">
                        <a class="" href="{{route('jobs.show', [$job->id, $job->slug])}}"> <!--Mengarahkan untuk menampilkan detail dari job  -->
                            <button type="submit" class="btn btn-outline-primary">Detail</button>
                        </a>
                    </div>
                </div>
            </div>
      		<div class="py-2"></div>
        @endforeach
        <div class="">
            {{$jobs->appends($_GET)->links()}}
        </div>
    </div>
    <div class="py-2"></div>
</div>


@endsection

