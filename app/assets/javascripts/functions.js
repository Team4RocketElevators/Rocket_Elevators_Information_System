function getBuildingName(lowCase) {
    switch (lowCase) {
        case "residential":
            return "Residential"
        case "commerical":
            return "Commercial"
        case "corporate":
            return "Corporate"
        case "hybrid":
            return "Hybrid"
        default:
        break;
    }
}