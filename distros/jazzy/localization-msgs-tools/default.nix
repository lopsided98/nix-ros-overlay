
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, geometry-msgs, nav-msgs, rclcpp, rclcpp-components, sensor-msgs, tf2-eigen, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-localization-msgs-tools";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/localization_msgs_tools-release/archive/release/jazzy/localization_msgs_tools/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "148390f428336b0b49ee8a89b6eecbb4aaf254772b45c8e890c20df60f9f682e";
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
