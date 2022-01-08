from django.contrib import admin

# Register your models here.
from .models import Country, State, District, City, Person


class CountryAdmin(admin.ModelAdmin):
    list_display = ["id", "name"]


admin.site.register(Country, CountryAdmin)


class StateAdmin(admin.ModelAdmin):
    list_display = ["id", "counrty", "name"]


admin.site.register(State, StateAdmin)


class DistrictAdmin(admin.ModelAdmin):
    list_display = ["id", "counrty", "state", "name"]


admin.site.register(District, DistrictAdmin)


class CityAdmin(admin.ModelAdmin):
    list_display = ["id", "country", "state", "district"]


admin.site.register(City, CityAdmin)


class PersonAdmin(admin.ModelAdmin):
    list_display = ["id", "name", "birth_date", "country", "state", "district", "city"]


admin.site.register(Person, PersonAdmin)
