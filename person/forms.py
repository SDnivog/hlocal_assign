from django import forms

from .models import Person, City, State, District


class PersonCreationForm(forms.ModelForm):
    class Meta:
        model = Person
        fields = "__all__"

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.fields["state"].queryset = State.objects.none()

        if "country" in self.data:
            try:
                country_id = int(self.data.get("country"))
                self.fields["state"].queryset = State.objects.filter(
                    country_id=country_id
                ).order_by("name")
            except (ValueError, TypeError):
                pass
        elif self.instance.pk:
            self.fields["state"].queryset = self.instance.country.state_set.order_by(
                "name"
            )

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.fields["district"].queryset = District.objects.none()

        if "state" in self.data:
            try:
                state_id = int(self.data.get("state"))
                self.fields["district"].queryset = District.objects.filter(
                    state_id=state_id
                ).order_by("name")
            except (ValueError, TypeError):
                pass
        elif self.instance.pk:
            self.fields[
                "district"
            ].queryset = self.instance.state.district_set.order_by("name")

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.fields["city"].queryset = City.objects.none()

        if "district" in self.data:
            try:
                district_id = int(self.data.get("district"))
                self.fields["city"].queryset = City.objects.filter(
                    district_id=district_id
                ).order_by("name")
            except (ValueError, TypeError):
                pass
        elif self.instance.pk:
            self.fields["city"].queryset = self.instance.district.city_set.order_by(
                "name"
            )
