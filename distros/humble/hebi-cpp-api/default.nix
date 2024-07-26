
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen }:
buildRosPackage {
  pname = "ros-humble-hebi-cpp-api";
  version = "3.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/hebi_cpp_api-release/archive/release/humble/hebi_cpp_api/3.9.0-1.tar.gz";
    name = "3.9.0-1.tar.gz";
    sha256 = "18192037cae0895302b07746ae4a9a62971b20fe5f54b7be2d0f82e29f274d52";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake eigen ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A ROS 2 package providing access to the HEBI C++ API.";
    license = with lib.licenses; [ asl20 ];
  };
}
