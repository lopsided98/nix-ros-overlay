
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, colcon-rclgd, geometry-msgs, rclcpp, rclgd-cli, ros-babel-fish, ros2launch, rosgraph-msgs, std-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-rclgd";
  version = "2.1.0-r3";

  src = fetchurl {
    url = "https://github.com/Ozuba/rclgd-release/archive/release/jazzy/rclgd/2.1.0-3.tar.gz";
    name = "2.1.0-3.tar.gz";
    sha256 = "1f85c6af9054c616d6f06a1fad8fdb1bfc7d10d3104929b244ce15e42340fbfb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ colcon-rclgd geometry-msgs rclcpp rclgd-cli ros-babel-fish ros2launch rosgraph-msgs std-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "GODOT implementation of rclcpp";
    license = with lib.licenses; [ mit ];
  };
}
