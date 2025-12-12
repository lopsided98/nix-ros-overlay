
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, boost, launch, launch-ros, rclcpp, rclcpp-components, rcutils, rmw, rmw-implementation-cmake, std-msgs, std-srvs, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-humble-persist-parameter-server";
  version = "1.0.3-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/persist_parameter_server-release/archive/release/humble/persist_parameter_server/1.0.3-4.tar.gz";
    name = "1.0.3-4.tar.gz";
    sha256 = "b696ae4121f625d32ae5e779858c0200a5091c5a83ae068170a392529117b9b1";
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
