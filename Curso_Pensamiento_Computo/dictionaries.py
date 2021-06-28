#Este es un codigo para entender la compreheciòn de diccionarios anidados
nested_dict={'first':{'a':1},'second':{'b':2}}
final_dict={outer_k:{float(inner_v) for (inner_k,inner_v) in outer_v.items()} for (outer_k,outer_v) in nested_dict.items()
print(final_dict)
