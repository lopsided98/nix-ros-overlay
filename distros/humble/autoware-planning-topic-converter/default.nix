
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-lint-common, autoware-motion-utils, autoware-planning-msgs, autoware-utils-geometry, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-humble-autoware-planning-topic-converter";
  version = "1.8.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_planning_topic_converter/1.8.0-3.tar.gz";
    name = "1.8.0-3.tar.gz";
    sha256 = "b635ea7a7b517fa4ddca1452373d05c058162d8244c02bc6847a258268efc4ca";
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
