
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp }:
buildRosPackage {
  pname = "ros-humble-hatchbed-common";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/hatchbed_common-release/archive/release/humble/hatchbed_common/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "9bd8ff67a8a0e5f94012be0913fdbd08ac017329a47c5acb96a0014b464cc0d6";
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
