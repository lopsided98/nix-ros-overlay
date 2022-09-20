
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, fltk, gtk2, libGL, libGLU, libjpeg, libtool, pkg-config }:
buildRosPackage {
  pname = "ros-melodic-stage";
  version = "4.3.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/stage-release/archive/release/melodic/stage/4.3.0-0.tar.gz";
    name = "4.3.0-0.tar.gz";
    sha256 = "3c72bba7242ecd98b26f177e4227aef06ec85915f196ee88ec6103be4dfb492d";
  };

  buildType = "cmake";
  buildInputs = [ cmake libtool pkg-config ];
  propagatedBuildInputs = [ catkin fltk gtk2 libGL libGLU libjpeg ];
  nativeBuildInputs = [ cmake pkg-config ];

  meta = {
    description = ''Mobile robot simulator http://rtv.github.com/Stage'';
    license = with lib.licenses; [ "GPL" ];
  };
}
