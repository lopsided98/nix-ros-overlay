{ lib, buildPythonPackage, fetchFromGitHub, colcon-core, setuptools }:

buildPythonPackage rec {
  pname = "colcon-devtools";
  version = "0.3.0";

  src = fetchFromGitHub {
    owner = "colcon";
    repo = pname;
    tag = version;
    hash = "sha256-QBkShQ58QHhYtlKtYaj9/Zs8KMy/Cw55lJHM16uNoxI=";
  };

  pyproject = true;
  build-system = [ setuptools ];

  propagatedBuildInputs = [
    colcon-core
  ];

  meta = with lib; {
    description = "Extension for colcon to provide information about all extension points and extensions";
    homepage = "https://github.com/colcon/colcon-devtools";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
  };
}
