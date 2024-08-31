
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, as2-core, as2-msgs, behaviortree-cpp-v3, geometry-msgs, nav2-behavior-tree, nav2-msgs, rclcpp, rclcpp-action, sensor-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-humble-as2-behavior-tree";
  version = "1.1.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_behavior_tree/1.1.2-2.tar.gz";
    name = "1.1.2-2.tar.gz";
    sha256 = "db6bb5c9d8404aebbf9b3db3ba3ce08167690ae349d1a44c89bb4f1b1188b7a9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ as2-core as2-msgs behaviortree-cpp-v3 geometry-msgs nav2-behavior-tree nav2-msgs rclcpp rclcpp-action sensor-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "AS2 behavior trees";
    license = with lib.licenses; [ bsd3 ];
  };
}
