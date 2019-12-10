
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, libGL, libGLU, libjpeg, libpng, mk, postgresql, xorg }:
buildRosPackage {
  pname = "ros-melodic-euslisp";
  version = "9.26.0-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/euslisp-release/archive/release/melodic/euslisp/9.26.0-1.tar.gz";
    name = "9.26.0-1.tar.gz";
    sha256 = "267e9150e430c87ed26dd58e103e1db0ef56dfe6580f16bf3352ebb23f5f374a";
  };

  buildType = "cmake";
  buildInputs = [ cmake-modules mk ];
  propagatedBuildInputs = [ libGL libGLU libjpeg libpng postgresql xorg.fontadobe100dpi xorg.fontbh100dpi xorg.fontbhlucidatypewriter100dpi xorg.fontbitstream100dpi xorg.fontadobe75dpi xorg.fontbh75dpi xorg.fontbhlucidatypewriter75dpi xorg.fontbitstream75dpi xorg.libX11 xorg.libXext ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''EusLisp is an integrated programming system for the
  research on intelligent robots based on Common Lisp and
  Object-Oriented programming'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
