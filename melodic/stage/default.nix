
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, libtool, libjpeg, libGLU, catkin, libGL, cmake, gtk2, fltk, pkg-config }:
buildRosPackage {
  pname = "ros-melodic-stage";
  version = "4.3.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/stage-release/archive/release/melodic/stage/4.3.0-0.tar.gz";
    name = "4.3.0-0.tar.gz";
    sha256 = "3c72bba7242ecd98b26f177e4227aef06ec85915f196ee88ec6103be4dfb492d";
  };

  buildType = "cmake";
  buildInputs = [ libtool libjpeg libGLU libGL gtk2 fltk ];
  propagatedBuildInputs = [ catkin libjpeg libGLU libGL gtk2 fltk ];
  nativeBuildInputs = [ pkg-config cmake ];

  meta = {
    description = ''Mobile robot simulator http://rtv.github.com/Stage'';
    license = with lib.licenses; [ gpl1 ];
  };
}
