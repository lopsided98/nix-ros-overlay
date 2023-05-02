
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-gmock, ament-cmake-gtest, ament-lint-auto, ament-lint-common, launch-ros, libyamlcpp, lifecycle-msgs, maliput, maliput-ros-interfaces, maliput-ros-translation, rclcpp, rclcpp-lifecycle, ros2launch }:
buildRosPackage {
  pname = "ros-foxy-maliput-ros";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/maliput_ros-release/archive/release/foxy/maliput_ros/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "ab7cbc5cc10451ec20302418ae925fc2df086dda55857a0a0afff819d4162c5f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-gmock ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ launch-ros libyamlcpp lifecycle-msgs maliput maliput-ros-interfaces maliput-ros-translation rclcpp rclcpp-lifecycle ros2launch ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS2 integration package which offers the maliput API through the ROS2 service interface.'';
    license = with lib.licenses; [ "BSD-Clause-3" ];
  };
}
