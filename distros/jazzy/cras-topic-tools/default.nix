
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gen-version-h, cras-cpp-common, cras-lint, cxxopts, rclcpp, rclcpp-components, std-msgs, topic-tools }:
buildRosPackage {
  pname = "ros-jazzy-cras-topic-tools";
  version = "3.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cras_ros_utils-release/archive/release/jazzy/cras_topic_tools/3.0.0-2.tar.gz";
    name = "3.0.0-2.tar.gz";
    sha256 = "e5d9650eb3dbbc2d108c06d632d146f16304777df729053b28049b1dac260497";
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
