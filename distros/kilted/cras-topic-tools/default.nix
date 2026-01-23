
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gen-version-h, cras-cpp-common, cras-lint, cxxopts, rclcpp, rclcpp-components, std-msgs, topic-tools }:
buildRosPackage {
  pname = "ros-kilted-cras-topic-tools";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cras_ros_utils-release/archive/release/kilted/cras_topic_tools/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "07cbe94b48ce37a7674d07bc2d159ab4ad0f76948b02d899f3ca20cba1f1d765";
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
