
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, lifecycle-msgs, nav-msgs, raspimouse-msgs, rclcpp, rclcpp-components, rclcpp-lifecycle, std-msgs, std-srvs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-kilted-raspimouse";
  version = "2.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/raspimouse2-release/archive/release/kilted/raspimouse/2.0.0-2.tar.gz";
    name = "2.0.0-2.tar.gz";
    sha256 = "b36b43006eeaf4d2378f2fde83959cb2375d4eec82bf1ce9dbcd50ca293f15ae";
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
