
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gtk2, catkin, libtool, pkg-config, libGL, libjpeg, libGLU, fltk, cmake }:
buildRosPackage {
  pname = "ros-melodic-stage";
  version = "4.3.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/stage-release/archive/release/melodic/stage/4.3.0-0.tar.gz";
    name = "4.3.0-0.tar.gz";
    sha256 = "3c72bba7242ecd98b26f177e4227aef06ec85915f196ee88ec6103be4dfb492d";
  };

  buildType = "cmake";
  buildInputs = [ gtk2 libtool libjpeg libGLU fltk libGL ];
  propagatedBuildInputs = [ gtk2 catkin libjpeg libGLU fltk libGL ];
  nativeBuildInputs = [ cmake pkg-config ];

  meta = {
    description = ''Mobile robot simulator http://rtv.github.com/Stage'';
    license = with lib.licenses; [ gpl1 ];
  };
}
