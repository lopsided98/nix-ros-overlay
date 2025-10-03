
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen }:
buildRosPackage {
  pname = "ros-rolling-hebi-cpp-api";
  version = "3.15.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/hebi_cpp_api-release/archive/release/rolling/hebi_cpp_api/3.15.0-1.tar.gz";
    name = "3.15.0-1.tar.gz";
    sha256 = "7c81f06f58569f3ae7c38b3b6952f73257e3b7235f8c49788f723d5a9564f41c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake eigen ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A ROS 2 package providing access to the HEBI C++ API.";
    license = with lib.licenses; [ asl20 ];
  };
}
