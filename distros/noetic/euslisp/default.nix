
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, libGL, libGLU, libjpeg, libpng, mk, postgresql, xorg }:
buildRosPackage {
  pname = "ros-noetic-euslisp";
  version = "9.29.0-r2";

  src = fetchurl {
    url = "https://github.com/tork-a/euslisp-release/archive/release/noetic/euslisp/9.29.0-2.tar.gz";
    name = "9.29.0-2.tar.gz";
    sha256 = "c46c22dd8bc3fbe650fb4137d3bab113dfc97dd8db666a634860c67b6d24aa60";
  };

  buildType = "cmake";
  buildInputs = [ catkin cmake-modules mk ];
  propagatedBuildInputs = [ libGL libGLU libjpeg libpng postgresql xorg.fontadobe100dpi xorg.fontadobe75dpi xorg.fontbh100dpi xorg.fontbh75dpi xorg.fontbhlucidatypewriter100dpi xorg.fontbhlucidatypewriter75dpi xorg.fontbitstream100dpi xorg.fontbitstream75dpi xorg.libX11 xorg.libXext ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''EusLisp is an integrated programming system for the
  research on intelligent robots based on Common Lisp and
  Object-Oriented programming'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
