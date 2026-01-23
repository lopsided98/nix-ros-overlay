
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gen-version-h, cras-cpp-common, cras-lint, cxxopts, rclcpp, rclcpp-components, std-msgs, topic-tools }:
buildRosPackage {
  pname = "ros-rolling-cras-topic-tools";
  version = "3.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cras_ros_utils-release/archive/release/rolling/cras_topic_tools/3.0.0-2.tar.gz";
    name = "3.0.0-2.tar.gz";
    sha256 = "328d6e307d319789bfedd44df3021d6aeb5f95f9a0ddf1a9941e7a23ccf17ba6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gen-version-h cxxopts ];
  checkInputs = [ cras-lint ];
  propagatedBuildInputs = [ cras-cpp-common rclcpp rclcpp-components std-msgs topic-tools ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gen-version-h ];

  meta = {
    description = "Nodes and components for safe and efficient manipulation with topics";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
