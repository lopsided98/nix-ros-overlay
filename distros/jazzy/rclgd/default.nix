
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-test, ament-lint-auto, ament-lint-common, colcon-rclgd, example-interfaces, geometry-msgs, rclcpp, rclcpp-action, rclgd-cli, ros-babel-fish, ros2launch, rosgraph-msgs, std-msgs, tf2-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-rclgd";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/Ozuba/rclgd-release/archive/release/jazzy/rclgd/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "b59a0cefdc272171365b278b9b5fbb8cdd867ae630b63318388aac36c6447e81";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-test ament-lint-auto ament-lint-common example-interfaces ];
  propagatedBuildInputs = [ colcon-rclgd geometry-msgs rclcpp rclcpp-action rclgd-cli ros-babel-fish ros2launch rosgraph-msgs std-msgs tf2-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "GODOT implementation of rclcpp";
    license = with lib.licenses; [ mit ];
  };
}
