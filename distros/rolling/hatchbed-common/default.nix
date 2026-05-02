
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp }:
buildRosPackage {
  pname = "ros-rolling-hatchbed-common";
  version = "0.1.5-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/hatchbed_common-release/archive/release/rolling/hatchbed_common/0.1.5-2.tar.gz";
    name = "0.1.5-2.tar.gz";
    sha256 = "ee29e3f54655b979f2cd7f6740614469f9087cf8ea3380d32fdfdb9eb3c79a1f";
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
