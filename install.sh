SKIPMOUNT=false
PROPFILE=true
POSTFSDATA=false
LATESTARTSERVICE=true

print_modname() {
  ui_print "•••••••••••••••••••••••••••••••"
  ui_print "Executing SpoofMaster 9000..."
  ui_print "Transforming device identity..."
  ui_print "Altering the digital fingerprint..."
  ui_print "Injecting a touch of anonymity..."
  ui_print "Modifying device details on the fly..."
  ui_print "Crafting a virtual disguise..."
  ui_print "Obscuring the true device identity..."
  ui_print "Unleashing the power of spoofing..."
  ui_print "Shapeshifting your device's profile..."
  ui_print "Morphing into a digital chameleon..."
  ui_print "•••••••••••••••••••••••••••••••"
}

MOD_EXTRACT() {
 unzip -o "$ZIPFILE" system/* -d $MODPATH >&2
}

set_permissions() {
  set_perm_recursive $MODPATH 0 0 0755 0644
}