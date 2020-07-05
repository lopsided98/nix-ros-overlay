{ stdenv, fetchFromGitHub, cmake, ruby }:

stdenv.mkDerivation rec {
  pname = "ignition-tools";
  version = "1.0.0";

  src = fetchFromGitHub {
    owner = "ignitionrobotics";
    repo = "ign-tools";
    rev = "${pname}_${version}";
    sha256 = "1l4vdcczyzqwy25c064wpypd2m0nrfg7vp91p7d9gcg94367nanv";
  };

  nativeBuildInputs = [ cmake ruby ];

  meta = with stdenv.lib; {
    homepage = "https://bitbucket.org/ignitionrobotics/ign-tools";
    description = "Ignition entry point for using all the suite of ignition tools";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
  };
}
