
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, as2-core, as2-msgs, behaviortree-cpp-v3, geometry-msgs, nav2-behavior-tree, nav2-msgs, rclcpp, rclcpp-action, sensor-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-humble-as2-behavior-tree";
  version = "1.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_behavior_tree/1.0.7-1.tar.gz";
    name = "1.0.7-1.tar.gz";
    sha256 = "b2eb52ca446b92b67e13483ae3e2e5a2642ef949a83fd55ad451be1ea372a121";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ as2-core as2-msgs behaviortree-cpp-v3 geometry-msgs nav2-behavior-tree nav2-msgs rclcpp rclcpp-action sensor-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''AS2 behavior trees'';
    license = with lib.licenses; [ bsd3 ];
  };
}
