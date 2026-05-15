
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, boost, launch, launch-ros, rclcpp, rclcpp-components, rcutils, rmw, rmw-implementation-cmake, std-msgs, std-srvs, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-jazzy-persist-parameter-server";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/persist_parameter_server-release/archive/release/jazzy/persist_parameter_server/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "f37fc25bdc4323b30e23f0f4af09e94ee1493a76b94e88da53a9743348003e5d";
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
