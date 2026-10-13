
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, diagnostic-msgs, easynav-common, easynav-sensors, geometry-msgs, nav-msgs, pluginlib, rclcpp, rclcpp-lifecycle, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-kilted-easynav-core";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/EasyNavigation-release/archive/release/kilted/easynav_core/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "5011c7be5e02595643aa0042a51b5c1aefaae9378878d9937774c4aebb74a595";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common easynav-sensors ];
  propagatedBuildInputs = [ diagnostic-msgs easynav-common geometry-msgs nav-msgs pluginlib rclcpp rclcpp-lifecycle tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Easy Navigation: Abstract interfaces for easynav plugins.";
    license = with lib.licenses; [ asl20 ];
  };
}
