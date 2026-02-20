
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-lint-common, autoware-perception-msgs, boost, geometry-msgs, rclcpp, rclcpp-components, unique-identifier-msgs }:
buildRosPackage {
  pname = "ros-humble-autoware-perception-objects-converter";
  version = "1.7.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_perception_objects_converter/1.7.0-2.tar.gz";
    name = "1.7.0-2.tar.gz";
    sha256 = "f89925009525de770172c9dccce2d901246f407a95d4ccd80fe4cefa09bd0542";
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
