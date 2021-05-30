{ lib, stdenv, fetchFromGitHub, cmake, ruby }:

stdenv.mkDerivation rec {
  pname = "ignition-tools";
  version = "1.2.0";

  src = fetchFromGitHub {
    owner = "ignitionrobotics";
    repo = "ign-tools";
    rev = "${pname}_${version}";
    sha256 = "1zf5hrwkfp7cilfqsk8spdi7dsygj2bff5w3d56cd97ym7r4d1zi";
  };

  nativeBuildInputs = [ cmake ruby ];

  meta = with lib; {
    homepage = "https://bitbucket.org/ignitionrobotics/ign-tools";
    description = "Ignition entry point for using all the suite of ignition tools";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
  };
}
