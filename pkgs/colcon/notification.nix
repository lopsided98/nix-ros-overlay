{ lib, buildPythonPackage, fetchFromGitHub, colcon-core, notify2, setuptools }:

buildPythonPackage rec {
  pname = "colcon-notification";
  version = "0.3.1";

  src = fetchFromGitHub {
    owner = "colcon";
    repo = pname;
    tag = version;
    hash = "sha256-gKi5xl2ln+6CCwynUzh+WI87A4KHcrwbjkLJ6LmOoxk=";
  };

  pyproject = true;
  build-system = [ setuptools ];

  propagatedBuildInputs = [ colcon-core notify2 ];

  doCheck = false;

  meta = with lib; {
    description = "Extension for colcon-core to provide status notifications";
    homepage = "https://colcon.readthedocs.io";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
  };
}
