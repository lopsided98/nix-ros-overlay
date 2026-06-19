
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-lint-auto, autoware-cmake, autoware-sensing-msgs, continental-msgs, continental-srvs, diagnostic-msgs, diagnostic-updater, geometry-msgs, message-filters, nebula-continental-common, nebula-continental-decoders, nebula-continental-hw-interfaces, nebula-core-common, nebula-core-ros, nebula-msgs, radar-msgs, rclcpp, rclcpp-components, ros-environment, ros-testing, rosbag2-cpp, sensor-msgs, sync-tooling-msgs, tf2-ros, visualization-msgs, yaml-cpp }:
buildRosPackage {
  pname = "ros-jazzy-nebula-continental";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/jazzy/nebula_continental/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "7a8b031b34d88e8c4fc4fcb4742c0522dd3e3277949fd1b77047b51f825fdd19";
  };

  buildType = "ament_cmake";
  buildInputs = [ autoware-cmake ros-environment ros-testing ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto rosbag2-cpp ];
  propagatedBuildInputs = [ autoware-sensing-msgs continental-msgs continental-srvs diagnostic-msgs diagnostic-updater geometry-msgs message-filters nebula-continental-common nebula-continental-decoders nebula-continental-hw-interfaces nebula-core-common nebula-core-ros nebula-msgs radar-msgs rclcpp rclcpp-components sensor-msgs sync-tooling-msgs tf2-ros visualization-msgs yaml-cpp ];
  nativeBuildInputs = [ autoware-cmake ros-environment ros-testing ];

  meta = {
    description = "Nebula Continental ROS Wrapper";
    license = with lib.licenses; [ asl20 ];
  };
}
