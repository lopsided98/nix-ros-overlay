
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-lint-common, autoware-motion-utils, autoware-planning-msgs, autoware-utils-geometry, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-jazzy-autoware-planning-topic-converter";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/jazzy/autoware_planning_topic_converter/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "f94115663172fd5997839e5d452dc8f748774ceb96acd7e94ea86d491861f696";
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
