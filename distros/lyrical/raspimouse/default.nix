
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, lifecycle-msgs, nav-msgs, raspimouse-msgs, rclcpp, rclcpp-components, rclcpp-lifecycle, std-msgs, std-srvs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-lyrical-raspimouse";
  version = "2.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/raspimouse2-release/archive/release/lyrical/raspimouse/2.0.0-3.tar.gz";
    name = "2.0.0-3.tar.gz";
    sha256 = "e0376c3587e22bd44e5a87edd5c7c331524b59bd4977ecdbb6169d7a956f8441";
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
