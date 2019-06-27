
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslib, catkin, cmake-modules, dynamic-reconfigure }:
buildRosPackage {
  pname = "ros-melodic-mini-maxwell";
  version = "2.1.12-r2";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/mini_maxwell/2.1.12-2.tar.gz;
    sha256 = "7f00ef62219190f48faa44f607e3910d329bfb6b0748a80b5e916951e3874fec";
  };

  buildInputs = [ roslib cmake-modules dynamic-reconfigure ];
  propagatedBuildInputs = [ dynamic-reconfigure ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''mini_maxwell'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
