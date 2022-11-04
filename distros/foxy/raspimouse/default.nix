
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, lifecycle-msgs, nav-msgs, raspimouse-msgs, rclcpp, rclcpp-components, rclcpp-lifecycle, std-msgs, std-srvs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-foxy-raspimouse";
  version = "1.1.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/raspimouse2-release/archive/release/foxy/raspimouse/1.1.0-4.tar.gz";
    name = "1.1.0-4.tar.gz";
    sha256 = "04e6f28ef5fa167d80e849e7665ecc658be8ca24c4660b2c02a0970164ebd98b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs lifecycle-msgs nav-msgs raspimouse-msgs rclcpp rclcpp-components rclcpp-lifecycle std-msgs std-srvs tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''RaspiMouse ROS 2 node'';
    license = with lib.licenses; [ asl20 ];
  };
}
