
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, fltk, gtk2, libGL, libGLU, libjpeg, libtool, pkg-config }:
buildRosPackage {
  pname = "ros-noetic-stage";
  version = "4.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/stage-release/archive/release/noetic/stage/4.3.0-1.tar.gz";
    name = "4.3.0-1.tar.gz";
    sha256 = "3fc7830e9adb6c52dec23b0836191f375d18a7b8943c42f63e8e4aa027b854c6";
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
