
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, lifecycle-msgs, nav-msgs, raspimouse-msgs, rclcpp, rclcpp-components, rclcpp-lifecycle, std-msgs, std-srvs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-rolling-raspimouse";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/raspimouse2-release/archive/release/rolling/raspimouse/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "d50e90f942980e85c825d6b23088880ea38b390a1d4cdaf1234f5355a6bfdb3a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs lifecycle-msgs nav-msgs raspimouse-msgs rclcpp rclcpp-components rclcpp-lifecycle std-msgs std-srvs tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "RaspiMouse ROS 2 node";
    license = with lib.licenses; [ asl20 ];
  };
}
