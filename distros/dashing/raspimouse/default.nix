
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, nav-msgs, raspimouse-msgs, rclcpp, rclcpp-components, rclcpp-lifecycle, std-msgs, std-srvs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-dashing-raspimouse";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/rt-net/raspimouse2-release/archive/release/dashing/raspimouse/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "480d14a5c319b7c24ecbddde14c3e6d9324a75feac52562ed7d28aad3cc2ae66";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs nav-msgs raspimouse-msgs rclcpp rclcpp-components rclcpp-lifecycle std-msgs std-srvs tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''RaspiMouse ROS 2 node'';
    license = with lib.licenses; [ asl20 ];
  };
}
