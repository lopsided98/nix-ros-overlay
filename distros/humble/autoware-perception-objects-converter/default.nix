
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-lint-common, autoware-perception-msgs, boost, geometry-msgs, rclcpp, rclcpp-components, unique-identifier-msgs }:
buildRosPackage {
  pname = "ros-humble-autoware-perception-objects-converter";
  version = "1.8.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_perception_objects_converter/1.8.0-3.tar.gz";
    name = "1.8.0-3.tar.gz";
    sha256 = "abeb29cc0c8e937ccc3a20c8118f6393aaac3d583c196157d50a68cdb36e6882";
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
