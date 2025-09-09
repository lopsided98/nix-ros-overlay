
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp }:
buildRosPackage {
  pname = "ros-jazzy-hatchbed-common";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/hatchbed_common-release/archive/release/jazzy/hatchbed_common/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "bb530931876fb9a5aaca45025671e3468ecfb9c852eeeabedd61390d8a15a482";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Common Hatchbed C++ utility code for ROS, such registering and handling updates to ros parameters.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
