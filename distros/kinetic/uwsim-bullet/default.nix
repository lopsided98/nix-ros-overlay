
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, freeglut, xorg }:
buildRosPackage {
  pname = "ros-kinetic-uwsim-bullet";
  version = "2.82.1";

  src = fetchurl {
    url = "https://github.com/uji-ros-pkg/uwsim_bullet-release/archive/release/kinetic/uwsim_bullet/2.82.1-0.tar.gz";
    name = "2.82.1-0.tar.gz";
    sha256 = "e753ed61af76cbf466a018d6934e38612072daf902caf500eeb478e3051fb369";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ catkin freeglut xorg.libXext ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The bullet library. See https://code.google.com/p/bullet'';
    license = with lib.licenses; [ "Check author's website" ];
  };
}
