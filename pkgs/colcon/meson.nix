{ lib, buildPythonPackage, fetchFromGitHub, colcon-core, colcon-library-path, meson, setuptools }:

buildPythonPackage rec {
  pname = "colcon-meson";
  version = "0.5.0";

  src = fetchFromGitHub {
    owner = "colcon";
    repo = pname;
    tag = version;
    hash = "sha256-VLCyKmPceY99cKMH/Ctotskl26Q3t7/qA4XOS7QBnBg=";
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
