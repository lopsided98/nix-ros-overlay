
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, freeglut, cmake, catkin, xorg }:
buildRosPackage {
  pname = "ros-melodic-uwsim-bullet";
  version = "2.82.1-r1";

  src = fetchurl {
    url = "https://github.com/uji-ros-pkg/uwsim_bullet-release/archive/release/melodic/uwsim_bullet/2.82.1-1.tar.gz";
    name = "2.82.1-1.tar.gz";
    sha256 = "1e32cf1e037d597481cd64db49bb4a98ddb2f1963b413f81b850b23d07e71612";
  };

  buildType = "cmake";
  buildInputs = [ freeglut xorg.libXext ];
  propagatedBuildInputs = [ freeglut catkin xorg.libXext ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The bullet library. See https://code.google.com/p/bullet'';
    license = with lib.licenses; [ "Check author's website" ];
  };
}
