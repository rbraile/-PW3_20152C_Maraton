
function clave_validacion(oSrc, args) {
    if (args.Value.length < 8) {
        args.IsValid = false;
        return;
    }

    return true;
}