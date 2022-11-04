
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, freeglut, xorg }:
buildRosPackage {
  pname = "ros-melodic-uwsim-bullet";
  version = "2.82.2-r1";

  src = fetchurl {
    url = "https://github.com/uji-ros-pkg/uwsim_bullet-release/archive/release/melodic/uwsim_bullet/2.82.2-1.tar.gz";
    name = "2.82.2-1.tar.gz";
    sha256 = "e2d8638aff5002aa0ce7d104c68258d055ea31ed51eb7555e6694faf66ee35b7";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ catkin freeglut xorg.libXext ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The bullet library. See https://code.google.com/p/bullet'';
    license = with lib.licenses; [ "Check-authors-website" ];
  };
}
