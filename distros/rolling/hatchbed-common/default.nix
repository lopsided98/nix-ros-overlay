
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp }:
buildRosPackage {
  pname = "ros-rolling-hatchbed-common";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/hatchbed_common-release/archive/release/rolling/hatchbed_common/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "8f572ed0b5f21eecf0e6c73f1565b95ff055d34ff0f974a7bfe80eeed119f7a0";
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
