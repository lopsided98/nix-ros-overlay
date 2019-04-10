
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gtk2, catkin, libtool, pkg-config, libGL, libjpeg, libGLU, fltk, cmake }:
buildRosPackage {
  pname = "ros-lunar-stage";
  version = "4.3.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/stage-release/archive/release/lunar/stage/4.3.0-0.tar.gz;
    sha256 = "5db7bd45355204cb67f1c1be41ae551da558bcfb6ce754eb390e407a8d8d1a2e";
  };

  buildInputs = [ libjpeg fltk libGLU gtk2 libGL libtool ];
  propagatedBuildInputs = [ libGL libjpeg fltk libGLU gtk2 catkin ];
  nativeBuildInputs = [ cmake pkg-config ];

  meta = {
    description = ''Mobile robot simulator http://rtv.github.com/Stage'';
    #license = lib.licenses.GPL;
  };
}
