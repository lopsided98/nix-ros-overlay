
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bzip2, cmake, doxygen, eigen, gsl, libjpeg, liblapack, libpng, libv4l, libx11, libxml2, llvmPackages, nlohmann_json, openblas, opencv, zbar }:
buildRosPackage {
  pname = "ros-jazzy-visp";
  version = "3.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/visp-release/archive/release/jazzy/visp/3.7.0-1.tar.gz";
    name = "3.7.0-1.tar.gz";
    sha256 = "b47c5895eb9b2f4cc66aac0ba72c3dd1ba5452c878241fed45455d19c4844f83";
  };

  buildType = "cmake";
  buildInputs = [ cmake doxygen ];
  propagatedBuildInputs = [ bzip2 eigen gsl libjpeg liblapack libpng libv4l libx11 libxml2 llvmPackages.openmp nlohmann_json openblas opencv opencv.cxxdev zbar ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "ViSP standing for Visual Servoing Platform is a modular cross
    platform library that allows prototyping and developing applications
    using visual tracking and visual servoing technics at the heart of the
    researches done by Inria Lagadic team. ViSP is able to compute control
    laws that can be applied to robotic systems. It provides a set of visual
    features that can be tracked using real time image processing or computer
    vision algorithms. ViSP provides also simulation capabilities.

    ViSP can be useful in robotics, computer vision, augmented reality
    and computer animation.";
    license = with lib.licenses; [ gpl2Plus ];
  };
}
