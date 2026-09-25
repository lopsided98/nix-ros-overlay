
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, gtest }:
buildRosPackage {
  pname = "ros-rolling-mrpt-common";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt3-release/archive/release/rolling/mrpt_common/3.2.0-1.tar.gz";
    name = "3.2.0-1.tar.gz";
    sha256 = "645beddc73488bab86db63a8cd6b6e4807b0c522b754baa3e3392b446d88bebd";
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
