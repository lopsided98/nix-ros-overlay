
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mola-yaml, mrpt-libgui, mrpt-libmaps, mrpt-libobs }:
buildRosPackage {
  pname = "ros-humble-mola-kernel";
  version = "1.6.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/humble/mola_kernel/1.6.4-1.tar.gz";
    name = "1.6.4-1.tar.gz";
    sha256 = "1f8a1331257045ff13b43e8947e37a6b4f8bdac90540a7b58590d646f5f70c1a";
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
