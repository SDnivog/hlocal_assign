from django.db import models


class Country(models.Model):
    name = models.CharField(max_length=40)

    class Meta:
        verbose_name, verbose_name_plural = (
            "Countries",
            "Countries",
        )
    def __str__(self):
        return self.name

class State(models.Model):
    counrty = models.ForeignKey(Country, on_delete=models.CASCADE)
    name = models.CharField('State Name', max_length=255)
    
    def __str__(self):
        return self.name
    class Meta:
        verbose_name, verbose_name_plural = (
            "States",
            "States",
        )

class District(models.Model):
    counrty = models.ForeignKey(Country, on_delete=models.CASCADE,null=True)
    state = models.ForeignKey(State, on_delete=models.CASCADE,null=True)
    name = models.CharField('District Name', max_length=255)
    
    def __str__(self):
        return self.name 
    class Meta:
        verbose_name, verbose_name_plural = (
            "Districts",
            "Districts",
        )

class City(models.Model):
    country = models.ForeignKey(Country, on_delete=models.CASCADE)
    state = models.ForeignKey(State, on_delete=models.CASCADE,null=True)
    district = models.ForeignKey(District, on_delete=models.CASCADE,null=True)
    name = models.CharField(max_length=40)
    
    class Meta:
        verbose_name, verbose_name_plural = (
            "Cities",
            "Cities",
        ) 
    def __str__(self):
        return self.name


class Person(models.Model):
    name = models.CharField(max_length=124)
    birth_date = models.DateField(max_length=124)
    country = models.ForeignKey(Country, on_delete=models.SET_NULL, blank=True, null=True)
    state = models.ForeignKey(State, on_delete=models.CASCADE,null=True)
    district = models.ForeignKey(District, on_delete=models.CASCADE,null=True)
    city = models.ForeignKey(City, on_delete=models.SET_NULL, blank=True, null=True)

    class Meta:
        verbose_name, verbose_name_plural = (
            "Person Details",
            "Person Details",
        )
    def __str__(self):
        return self.name
