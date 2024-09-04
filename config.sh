SKIPMOUNT=false
PROPFILE=false
POSTFSDATA=false
LATESTARTSERVICE=true

print_modname() {
  ui_print "*******************************"
  ui_print "      Aim Control Module v1.0"
  ui_print "*******************************"
}

on_install() {
  ui_print "Applying aim control settings..."
}

set_permissions() {
  set_perm_recursive $MODPATH 0 0 0755 0644
}
