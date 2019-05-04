
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, postgresql, mk, catkin, libjpeg, xorg, libGLU, libGL, libpng }:
buildRosPackage {
  pname = "ros-kinetic-euslisp";
  version = "9.26.0";

  src = fetchurl {
    url = https://github.com/tork-a/euslisp-release/archive/release/kinetic/euslisp/9.26.0-0.tar.gz;
    sha256 = "dd1af493f41de973cbc96bb65a99fb4d86753bb9b9c2071a5616919b4f0a200a";
  };

  buildInputs = [ postgresql cmake-modules mk libjpeg xorg.libX11 libGLU libGL xorg.libXext libpng ];
  propagatedBuildInputs = [ postgresql libjpeg xorg.libX11 libGLU libGL xorg.libXext libpng ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''EusLisp is an integrated programming system for the
  research on intelligent robots based on Common Lisp and
  Object-Oriented programming'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
