
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

  buildInputs = [ gtk2 libtool libjpeg libGLU fltk libGL ];
  propagatedBuildInputs = [ gtk2 catkin libjpeg libGLU fltk libGL ];
  nativeBuildInputs = [ cmake pkg-config ];

  meta = {
    description = ''Mobile robot simulator http://rtv.github.com/Stage'';
    license = with lib.licenses; [ gpl1 ];
  };
}
