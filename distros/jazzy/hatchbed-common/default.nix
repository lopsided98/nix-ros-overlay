
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cpplint, ament-cmake-gtest, ament-lint-auto, ament-lint-common, eigen, fmt, geometry-msgs, nav-msgs, rclcpp, rclcpp-components, rclcpp-lifecycle, sensor-msgs, std-msgs, tf2, tf2-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-jazzy-hatchbed-common";
  version = "0.1.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/hatchbed_common-release/archive/release/jazzy/hatchbed_common/0.1.8-1.tar.gz";
    name = "0.1.8-1.tar.gz";
    sha256 = "c24cb0bfcbd89583881320f04fbc9d0184f0e1150d51f3592633d775256feda8";
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
