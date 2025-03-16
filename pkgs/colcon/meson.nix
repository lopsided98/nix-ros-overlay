{ lib, buildPythonPackage, fetchPypi, colcon-core, colcon-library-path, meson }:

buildPythonPackage rec {
  pname = "colcon-meson";
  version = "0.4.5";

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-DqjGKFOJLXPEmFjo8TyDwHCY8H1gi4vtWTyxEMflILI=";
  };

  propagatedBuildInputs = [
    colcon-core
    colcon-library-path
    meson
  ];

  # Requires unpackaged dependencies
  #doCheck = false;

  meta = with lib; {
    description = "Extension for colcon to support Meson packages";
    homepage = "https://colcon.readthedocs.io";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
  };
}
