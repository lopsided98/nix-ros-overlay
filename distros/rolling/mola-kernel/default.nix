
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mola-yaml, mrpt-libgui, mrpt-libmaps, mrpt-libobs }:
buildRosPackage {
  pname = "ros-rolling-mola-kernel";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/rolling/mola_kernel/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "28e0841614615c3747a6e022ab0f9bf67faa6183d1faf9b166e024f6bb8ceb26";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-common mola-yaml mrpt-libgui mrpt-libmaps mrpt-libobs ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Fundamental C++ virtual interfaces and data types for the rest of MOLA modules";
    license = with lib.licenses; [ gpl3Only ];
  };
}
