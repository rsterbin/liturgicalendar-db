# TODO:
# 
# * If there's no liturgicalendar_schema table, run setup.sql
# * Make a list of the files in the order they need to be run by listing the
#   schema and data directories and ordering by individual filename so that they
#   get installed in the right order
# * Compare it to the schema list in the database
# * For each one that's missing or has a null install date, run it in sequence
# * Double-check that the list matches and the last one is active
# * Decide whether to keep a map of version numbers in here or rename the files
#   to include them
# * For each install file, have it start with prepping the version OR do the
#   version prepping in here
