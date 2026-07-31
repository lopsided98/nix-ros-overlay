
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, autoware-cmake, rclcpp }:
buildRosPackage {
  pname = "ros-humble-autoware-qos-utils";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_qos_utils/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "77d4b38d66721afe930c829e71e38259e7f5eff159b5673d3bd3804066172d99";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  propagatedBuildInputs = [ rclcpp ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "Autoware QoS Utils provides QoS compatibility utilities for different ROS 2 distributions.";
    license = with lib.licenses; [ asl20 ];
  };
}
