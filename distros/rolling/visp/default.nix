
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bzip2, cmake, doxygen, eigen, libjpeg, liblapack, libpng, libv4l, libxml2, opencv, xorg }:
buildRosPackage {
  pname = "ros-rolling-visp";
  version = "3.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/visp-release/archive/release/rolling/visp/3.5.0-1.tar.gz";
    name = "3.5.0-1.tar.gz";
    sha256 = "0998d6d4f7510b9af4b7f665ce6848bff094fb8889079c6e5467e00e74aade22";
  };

  buildType = "cmake";
  buildInputs = [ bzip2 cmake doxygen ];
  propagatedBuildInputs = [ eigen libjpeg liblapack libpng libv4l libxml2 opencv xorg.libX11 ];
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
