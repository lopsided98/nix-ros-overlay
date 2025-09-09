
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-lint-common, autoware-perception-msgs, boost, geometry-msgs, rclcpp, rclcpp-components, unique-identifier-msgs }:
buildRosPackage {
  pname = "ros-humble-autoware-perception-objects-converter";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_perception_objects_converter/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "96151055468b31c3e647968ddea039b5bd5233356ad6002ce21ab6bf3aa80258";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-perception-msgs boost geometry-msgs rclcpp rclcpp-components unique-identifier-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "ROS 2 node for converting between different perception object message types";
    license = with lib.licenses; [ asl20 ];
  };
}
