{ lib, stdenv, fetchFromGitHub, cmake, validatePkgConfig }:

stdenv.mkDerivation rec {
  pname = "urdfdom-headers";
  version = "1.0.5";

  src = fetchFromGitHub {
    owner = "ros";
    repo = "urdfdom_headers";
    rev = version;
    sha256 = "1abzhcyv2vad8l36vy0fcz9kpgns834la7hf9zal962bwycqnkmg";
  };

  nativeBuildInputs = [ cmake validatePkgConfig ];

  meta = with lib; {
    description = "URDF (U-Robot Description Format) headers provides core data structure headers for URDF";
    homepage = "https://github.com/ros/urdfdom_headers";
    license = licenses.bsd3;
    maintainers = with maintainers; [ lopsided98 ];
    platforms = platforms.all;
  };
}
