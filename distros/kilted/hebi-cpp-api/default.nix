
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen }:
buildRosPackage {
  pname = "ros-kilted-hebi-cpp-api";
  version = "3.15.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/hebi_cpp_api-release/archive/release/kilted/hebi_cpp_api/3.15.0-1.tar.gz";
    name = "3.15.0-1.tar.gz";
    sha256 = "e5ff642c7f83ff2f1de6e8b9ff37392a5e1e96fae4fcd3b9a72901ede7da781c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake eigen ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A ROS 2 package providing access to the HEBI C++ API.";
    license = with lib.licenses; [ asl20 ];
  };
}
