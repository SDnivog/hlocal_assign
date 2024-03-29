from django.http import JsonResponse
from django.shortcuts import render, redirect, get_object_or_404

from .forms import PersonCreationForm
from .models import District, City, State


def person_create_view(request):
    form = PersonCreationForm()
    if request.method == "POST":
        form = PersonCreationForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect("person_add")
    return render(request, "persons/home.html", {"form": form})


# AJAX


def load_states(request):
    country_id = request.GET.get("country_id")
    states = State.objects.filter(country_id=country_id)
    return render(
        request, "persons/state_dropdown_list_options.html", {"states": states}
    )


def load_districts(request):
    state_id = request.GET.get("state_id")
    districts = District.objects.filter(state_id=state_id)
    return render(
        request, "persons/district_dropdown_list_options.html", {"districts": districts}
    )


def load_cities(request):
    district_id = request.GET.get("district_id")
    citites = City.objects.filter(district_id=district_id)
    return render(
        request, "persons/city_dropdown_list_options.html", {"citites": citites}
    )
