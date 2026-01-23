
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen }:
buildRosPackage {
  pname = "ros-jazzy-hebi-cpp-api";
  version = "3.16.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/hebi_cpp_api-release/archive/release/jazzy/hebi_cpp_api/3.16.0-1.tar.gz";
    name = "3.16.0-1.tar.gz";
    sha256 = "e27b4a3bf07f1415a4294a58ccb0a2ddb1df79dbf2b59efe5a9d953bd25430c7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake eigen ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A ROS 2 package providing access to the HEBI C++ API.";
    license = with lib.licenses; [ asl20 ];
  };
}
