
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bzip2, cmake, doxygen, eigen, libjpeg, liblapack, libpng, libv4l, libxml2, opencv3, xorg }:
buildRosPackage {
  pname = "ros-galactic-visp";
  version = "3.4.0-r2";

  src = fetchurl {
    url = "https://github.com/lagadic/visp-release/archive/release/galactic/visp/3.4.0-2.tar.gz";
    name = "3.4.0-2.tar.gz";
    sha256 = "00a97b20710104bd70c17c4aec491a0511a3cd6e984e00a592baae8e28581406";
  };

  buildType = "cmake";
  buildInputs = [ bzip2 doxygen ];
  propagatedBuildInputs = [ eigen libjpeg liblapack libpng libv4l libxml2 opencv3 xorg.libX11 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''ViSP standing for Visual Servoing Platform is a modular cross
    platform library that allows prototyping and developing applications
    using visual tracking and visual servoing technics at the heart of the
    researches done by Inria Lagadic team. ViSP is able to compute control
    laws that can be applied to robotic systems. It provides a set of visual
    features that can be tracked using real time image processing or computer
    vision algorithms. ViSP provides also simulation capabilities.

    ViSP can be useful in robotics, computer vision, augmented reality
    and computer animation.'';
    license = with lib.licenses; [ gpl2 ];
  };
}
