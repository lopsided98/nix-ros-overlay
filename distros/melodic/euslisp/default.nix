
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, libGL, libGLU, libjpeg, libpng, mk, postgresql, xorg }:
buildRosPackage {
  pname = "ros-melodic-euslisp";
  version = "9.29.0-r6";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "tork-a";
        repo = "euslisp-release";
        rev = "release/melodic/euslisp/9.29.0-6";
        sha256 = "sha256-ZD3x+K0Ua8kZhz45zxMaqU0A9DtR0RPZHEw3AsoyOsg=";
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
