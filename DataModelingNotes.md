# Data Modeling Notes

## Normalization Analysis.

### 1NF Conversion
# DATASHEET(TName, Location, Phone, MTitle, ShowTime, Rating, Ccode, CName)
# Theater(TName,Location,Phone)
# Movie(MTitle, ShowTime,Rating)
# Credit(Ccode,CName)

### 2NF Conversion
# TName --> Location, Phone
# MTitle --> Rating
# ShowTime --> TName, MTitle
# Ccode -->  MTitle, CName

  #Does the table have a composite key? If so, then identify all partial #dependencies, where an attribute depends on only part of the PK. Write the #dependencies using

  # determinant columns --> dependent columns
  # Tname --> (Location, Phone)
  # Mtitle --> (Rating)
