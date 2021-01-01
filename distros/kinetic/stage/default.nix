
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, fltk, gtk2, libGL, libGLU, libjpeg, libtool, pkg-config }:
buildRosPackage {
  pname = "ros-kinetic-stage";
  version = "4.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/stage-release/archive/release/kinetic/stage/4.1.1-1.tar.gz";
    name = "4.1.1-1.tar.gz";
    sha256 = "7fecacb03492a12cc0aac09a78065df784017702c431af4f12fbe4ef6165057f";
  };

  buildType = "cmake";
  buildInputs = [ libtool ];
  propagatedBuildInputs = [ catkin fltk gtk2 libGL libGLU libjpeg ];
  nativeBuildInputs = [ cmake pkg-config ];

  meta = {
    description = ''Mobile robot simulator http://rtv.github.com/Stage'';
    license = with lib.licenses; [ gpl1 ];
  };
}
