
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, geometry-msgs, nav-msgs, rclcpp, rclcpp-components, sensor-msgs, tf2-eigen, tf2-ros }:
buildRosPackage {
  pname = "ros-lyrical-localization-msgs-tools";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/localization_msgs_tools-release/archive/release/lyrical/localization_msgs_tools/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "713b61d12c11a1dde9612db2d42c0d242fd00dfdd8533d1ac6bf38d42468b79d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-auto ];
  propagatedBuildInputs = [ geometry-msgs nav-msgs rclcpp rclcpp-components sensor-msgs tf2-eigen tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Bridges for localization messages";
    license = with lib.licenses; [ mit ];
  };
}
