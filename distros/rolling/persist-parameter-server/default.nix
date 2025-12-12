
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, boost, launch, launch-ros, rclcpp, rclcpp-components, rcutils, rmw, rmw-implementation-cmake, std-msgs, std-srvs, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-rolling-persist-parameter-server";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/persist_parameter_server-release/archive/release/rolling/persist_parameter_server/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "4b68f786cf9d4f0ae1aadc60e36cc9195612c9b74c2bf558aca725330949279b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake boost ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common launch ];
  propagatedBuildInputs = [ launch-ros rclcpp rclcpp-components rcutils rmw rmw-implementation-cmake std-msgs std-srvs yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ros2 parameter server that other nodes can write/read parameters including persistent parameters.";
    license = with lib.licenses; [ asl20 ];
  };
}
