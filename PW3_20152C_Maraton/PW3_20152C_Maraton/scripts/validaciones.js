
function clave_validacion(oSrc, args) {
    if (args.Value.length < 3) {
        args.IsValid = false;
        return;
    }

    return true;
}