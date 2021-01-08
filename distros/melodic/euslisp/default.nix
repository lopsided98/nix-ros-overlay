
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, libGL, libGLU, libjpeg, libpng, mk, postgresql, xorg }:
buildRosPackage {
  pname = "ros-melodic-euslisp";
  version = "9.27.0-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/euslisp-release/archive/release/melodic/euslisp/9.27.0-1.tar.gz";
    name = "9.27.0-1.tar.gz";
    sha256 = "6afe4048c28c7c5d1b94a85be4c774797eac4f43835fa20511e841eac47f5907";
  };

  buildType = "cmake";
  buildInputs = [ cmake-modules mk ];
  propagatedBuildInputs = [ libGL libGLU libjpeg libpng postgresql xorg.fontadobe100dpi xorg.fontadobe75dpi xorg.fontbh100dpi xorg.fontbh75dpi xorg.fontbhlucidatypewriter100dpi xorg.fontbhlucidatypewriter75dpi xorg.fontbitstream100dpi xorg.fontbitstream75dpi xorg.libX11 xorg.libXext ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''EusLisp is an integrated programming system for the
  research on intelligent robots based on Common Lisp and
  Object-Oriented programming'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
