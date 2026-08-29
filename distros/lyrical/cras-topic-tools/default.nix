
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gen-version-h, cras-cpp-common, cras-lint, cxxopts, rclcpp, rclcpp-components, std-msgs, topic-tools }:
buildRosPackage {
  pname = "ros-lyrical-cras-topic-tools";
  version = "4.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cras_ros_utils-release/archive/release/lyrical/cras_topic_tools/4.0.2-1.tar.gz";
    name = "4.0.2-1.tar.gz";
    sha256 = "5b5a8667f0615deca92aec2d38dbaa09dcfd7d80b0ae349913071c3da7b989b7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gen-version-h cxxopts ];
  checkInputs = [ cras-lint ];
  propagatedBuildInputs = [ cras-cpp-common rclcpp rclcpp-components std-msgs topic-tools ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gen-version-h ];

  meta = {
    description = "Nodes and components for safe and efficient manipulation with topics";
    license = with lib.licenses; [ bsd3 ];
  };
}
