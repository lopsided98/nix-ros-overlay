
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, boost, launch, launch-ros, rclcpp, rclcpp-components, rcutils, rmw, rmw-implementation-cmake, std-msgs, std-srvs, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-kilted-persist-parameter-server";
  version = "1.0.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/persist_parameter_server-release/archive/release/kilted/persist_parameter_server/1.0.3-2.tar.gz";
    name = "1.0.3-2.tar.gz";
    sha256 = "eabd6fb3a98d568a23f73ab2511bb8c4e3b38ec05ab20a372e693eff708a88e9";
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
