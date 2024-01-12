
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, lifecycle-msgs, nav-msgs, raspimouse-msgs, rclcpp, rclcpp-components, rclcpp-lifecycle, std-msgs, std-srvs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-raspimouse";
  version = "1.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/raspimouse2-release/archive/release/humble/raspimouse/1.1.2-1.tar.gz";
    name = "1.1.2-1.tar.gz";
    sha256 = "c6b5bb71d5ee5bdc9fbd94aa5ce3be1e92bee5c68d62c5f6f7c3e4aec0115cca";
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
