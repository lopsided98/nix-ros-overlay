
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-lint-common, autoware-motion-utils, autoware-planning-msgs, autoware-utils-geometry, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-humble-autoware-planning-topic-converter";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_planning_topic_converter/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "ed5a60c2bfee457da0c470e50d464681a1ebc5d3f66639a4e011bc36df74f151";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-motion-utils autoware-planning-msgs autoware-utils-geometry rclcpp rclcpp-components ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The autoware_planning_topic_converter package";
    license = with lib.licenses; [ asl20 ];
  };
}
