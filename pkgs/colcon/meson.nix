{ lib, buildPythonPackage, fetchPypi, colcon-core, colcon-library-path, meson, setuptools }:

buildPythonPackage rec {
  pname = "colcon-meson";
  version = "0.5.0";

  src = fetchPypi {
    inherit version;
    pname = "colcon_meson"; # https://github.com/colcon/colcon-meson/issues/19
    hash = "sha256-MgrMpSth0R+9AdUVoQr8y1unciIClvBn42FhEAitrX8=";
  };

  pyproject = true;
  build-system = [ setuptools ];

  propagatedBuildInputs = [
    colcon-core
    colcon-library-path
    meson
  ];

  meta = with lib; {
    description = "Extension for colcon to support Meson packages";
    homepage = "https://colcon.readthedocs.io";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
  };
}
