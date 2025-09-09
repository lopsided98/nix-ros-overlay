
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen }:
buildRosPackage {
  pname = "ros-jazzy-hebi-cpp-api";
  version = "3.13.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/hebi_cpp_api-release/archive/release/jazzy/hebi_cpp_api/3.13.0-3.tar.gz";
    name = "3.13.0-3.tar.gz";
    sha256 = "db6a872352de82c05d7b96313056bfc2a0950f46a4e4d6db7864a9a731a1c371";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake eigen ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A ROS 2 package providing access to the HEBI C++ API.";
    license = with lib.licenses; [ asl20 ];
  };
}
