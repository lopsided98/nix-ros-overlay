{ lib, stdenv, fetchFromGitHub, cmake, ruby }:

stdenv.mkDerivation rec {
  pname = "ignition-tools";
  version = "1.5.0";

  src = fetchFromGitHub rec {
    name = "${rev}-source";
    owner = "ignitionrobotics";
    repo = "ign-tools";
    rev = "${pname}_${version}";
    sha256 = "sha256-HgYT7MARRnOdUuUllxRn9pl7tsWO5RDIFDObzJQgZpc=";
  };

  nativeBuildInputs = [ cmake ruby ];

  meta = with lib; {
    homepage = "https://bitbucket.org/ignitionrobotics/ign-tools";
    description = "Ignition entry point for using all the suite of ignition tools";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
  };
}
