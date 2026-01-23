
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen }:
buildRosPackage {
  pname = "ros-humble-hebi-cpp-api";
  version = "3.16.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/hebi_cpp_api-release/archive/release/humble/hebi_cpp_api/3.16.0-1.tar.gz";
    name = "3.16.0-1.tar.gz";
    sha256 = "8287d742487950ba9ca1fdec553043bf1f2509f7cc2fb3b4c904ce5d831c9462";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake eigen ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A ROS 2 package providing access to the HEBI C++ API.";
    license = with lib.licenses; [ asl20 ];
  };
}
