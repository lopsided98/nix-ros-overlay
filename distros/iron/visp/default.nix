
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bzip2, cmake, doxygen, eigen, libjpeg, liblapack, libpng, libv4l, libxml2, opencv, xorg }:
buildRosPackage {
  pname = "ros-iron-visp";
  version = "3.5.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/visp-release/archive/release/iron/visp/3.5.0-3.tar.gz";
    name = "3.5.0-3.tar.gz";
    sha256 = "884c1653275da7782a806d402c1545ff2062290de1a4f8a49c363b245b3e8c69";
  };

  buildType = "cmake";
  buildInputs = [ bzip2 cmake doxygen ];
  propagatedBuildInputs = [ eigen libjpeg liblapack libpng libv4l libxml2 opencv opencv.cxxdev xorg.libX11 ];
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
    license = with lib.licenses; [ "GPL-2.0-only" ];
  };
}
