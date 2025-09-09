
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen }:
buildRosPackage {
  pname = "ros-rolling-hebi-cpp-api";
  version = "3.13.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/hebi_cpp_api-release/archive/release/rolling/hebi_cpp_api/3.13.0-1.tar.gz";
    name = "3.13.0-1.tar.gz";
    sha256 = "52f79ae0fc1ab05cd0cf6ef44004e1416cead7a49147e54cf1869211f6afb855";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake eigen ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A ROS 2 package providing access to the HEBI C++ API.";
    license = with lib.licenses; [ asl20 ];
  };
}
