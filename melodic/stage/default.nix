
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gtk2, catkin, libtool, pkg-config, libGL, libjpeg, libGLU, fltk, cmake }:
buildRosPackage {
  pname = "ros-melodic-stage";
  version = "4.3.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/stage-release/archive/release/melodic/stage/4.3.0-0.tar.gz;
    sha256 = "3c72bba7242ecd98b26f177e4227aef06ec85915f196ee88ec6103be4dfb492d";
  };

  propagatedBuildInputs = [ libGL libjpeg fltk libGLU gtk2 catkin ];
  nativeBuildInputs = [ cmake libjpeg fltk libGLU gtk2 libGL libtool pkg-config ];

  meta = {
    description = ''Mobile robot simulator http://rtv.github.com/Stage'';
    #license = lib.licenses.GPL;
  };
}
