
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, libGL, libGLU, libjpeg, libpng, mk, postgresql, xorg }:
buildRosPackage {
  pname = "ros-melodic-euslisp";
  version = "9.29.0-r6";

  src = fetchurl {
    url = "https://github.com/tork-a/euslisp-release/archive/release/melodic/euslisp/9.29.0-6.tar.gz";
    name = "9.29.0-6.tar.gz";
    sha256 = "efe3908a6cc4183a28bcb0df8480fa00e08a3aa356d81e52c0d60ae84a744e33";
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
