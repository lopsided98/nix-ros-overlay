
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ouxt-lint-common, rclcpp, rviz2, std-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-jazzy-color-names";
  version = "0.0.3-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/color_names-release/archive/release/jazzy/color_names/0.0.3-6.tar.gz";
    name = "0.0.3-6.tar.gz";
    sha256 = "65af0dbb40c2f46a49574ea19368d5e84e42c4c974ea34de37a407a5df09325f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ouxt-lint-common ];
  propagatedBuildInputs = [ rclcpp rviz2 std-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The color_names package";
    license = with lib.licenses; [ asl20 ];
  };
}
