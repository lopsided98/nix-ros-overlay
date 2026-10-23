
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, gtest }:
buildRosPackage {
  pname = "ros-humble-mrpt-common";
  version = "3.5.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/humble/mrpt_common/3.5.3-1.tar.gz";
    name = "3.5.3-1.tar.gz";
    sha256 = "ce2e2ed340937c8b8bf3f81c2be8d681ac921f33747330d14903f5a3ca8a045c";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  checkInputs = [ gtest ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Common CMake scripts to all MRPT modules";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
