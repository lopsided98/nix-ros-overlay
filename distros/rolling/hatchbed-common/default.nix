
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cpplint, ament-cmake-gtest, ament-lint-auto, ament-lint-common, eigen, fmt, geometry-msgs, nav-msgs, rclcpp, rclcpp-components, rclcpp-lifecycle, sensor-msgs, std-msgs, tf2, tf2-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-rolling-hatchbed-common";
  version = "0.1.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/hatchbed_common-release/archive/release/rolling/hatchbed_common/0.1.7-1.tar.gz";
    name = "0.1.7-1.tar.gz";
    sha256 = "c0b4166e5dd1fac1314659a2bd5e6ab87308ea9bb29e129d6160fd63132f1d37";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-cpplint ament-cmake-gtest ament-lint-auto ament-lint-common rclcpp-lifecycle ];
  propagatedBuildInputs = [ eigen fmt geometry-msgs nav-msgs rclcpp rclcpp-components sensor-msgs std-msgs tf2 tf2-msgs tf2-ros visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Common Hatchbed C++ utility code for ROS, such registering and handling updates to ros parameters.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
