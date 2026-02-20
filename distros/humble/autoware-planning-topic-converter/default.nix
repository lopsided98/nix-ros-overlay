
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-lint-common, autoware-motion-utils, autoware-planning-msgs, autoware-utils-geometry, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-humble-autoware-planning-topic-converter";
  version = "1.7.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_planning_topic_converter/1.7.0-2.tar.gz";
    name = "1.7.0-2.tar.gz";
    sha256 = "ab8f326ead5de1a35fb6568ff0c6434e1485ecc8e79913b3d673b3472b745761";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-motion-utils autoware-planning-msgs autoware-utils-geometry rclcpp rclcpp-components ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_planning_topic_converter package";
    license = with lib.licenses; [ asl20 ];
  };
}
