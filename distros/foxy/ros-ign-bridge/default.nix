
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, geometry-msgs, ignition, launch-ros, launch-testing, launch-testing-ament-cmake, nav-msgs, pkg-config, rclcpp, rosgraph-msgs, sensor-msgs, std-msgs, tf2-msgs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-foxy-ros-ign-bridge";
  version = "0.221.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_ign-release/archive/release/foxy/ros_ign_bridge/0.221.2-1.tar.gz";
    name = "0.221.2-1.tar.gz";
    sha256 = "ec186272bbfc483e9ef0d1d12767e7f1e6fa8a246da048bfc38866779da54b74";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pkg-config ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common launch-ros launch-testing launch-testing-ament-cmake ];
  propagatedBuildInputs = [ geometry-msgs ignition.msgs5 ignition.transport8 nav-msgs rclcpp rosgraph-msgs sensor-msgs std-msgs tf2-msgs trajectory-msgs ];
  nativeBuildInputs = [ ament-cmake pkg-config ];

  meta = {
    description = ''Bridge communication between ROS and Ignition Transport'';
    license = with lib.licenses; [ asl20 ];
  };
}
