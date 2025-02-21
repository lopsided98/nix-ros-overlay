
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen }:
buildRosPackage {
  pname = "ros-rolling-hebi-cpp-api";
  version = "3.12.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/hebi_cpp_api-release/archive/release/rolling/hebi_cpp_api/3.12.3-1.tar.gz";
    name = "3.12.3-1.tar.gz";
    sha256 = "334b8170478fecb234b1c37f9ca6e8f3449e45a466c2192fafd8580df6291187";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake eigen ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A ROS 2 package providing access to the HEBI C++ API.";
    license = with lib.licenses; [ asl20 ];
  };
}
