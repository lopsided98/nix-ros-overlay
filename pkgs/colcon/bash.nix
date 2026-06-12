{ lib, buildPythonPackage, fetchFromGitHub, colcon-core, setuptools }:

buildPythonPackage rec {
  pname = "colcon-bash";
  version = "0.5.0";

  src = fetchFromGitHub {
    owner = "colcon";
    repo = pname;
    tag = version;
    hash = "sha256-rdUo+aLnCkQBPwBVosPYhVZqBPXeJCKKWAv+0mQBJ8Q=";
  };

  pyproject = true;
  build-system = [ setuptools ];

  propagatedBuildInputs = [ colcon-core ];

  doCheck = false;

  meta = with lib; {
    description = "Extension for colcon-core to provide Bash scripts";
    homepage = "https://github.com/colcon/colcon-bash";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
  };
}
