
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, launch-xml, nav-msgs, poco, rclcpp, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-bosch-navigator-bridge";
  version = "2.1.16-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/locator_ros_bridge-release/archive/release/humble/bosch_navigator_bridge/2.1.16-1.tar.gz";
    name = "2.1.16-1.tar.gz";
    sha256 = "cdbb990f7da42a2ef6c42cea04b6f19ed2024018af43f3d6c4385918eed19fa7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs launch-xml nav-msgs poco rclcpp tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS interface to Rexroth ROKIT Navigator";
    license = with lib.licenses; [ asl20 ];
  };
}
