
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, rclcpp-action, rcutils, ros-gz-interfaces, sensor-msgs, std-msgs, turtlebot4-msgs }:
buildRosPackage {
  pname = "ros-jazzy-turtlebot4-gz-toolbox";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot4_simulator-release/archive/release/jazzy/turtlebot4_gz_toolbox/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "8ef1f94596d1f1c9311268e7ed84cf6bb7ec1e53d8fd38323503970e952f5c1a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp rclcpp-action rcutils ros-gz-interfaces sensor-msgs std-msgs turtlebot4-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Turtlebot4 Gazebo Toolbox";
    license = with lib.licenses; [ asl20 ];
  };
}
