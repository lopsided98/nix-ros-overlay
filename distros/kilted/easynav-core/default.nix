
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, diagnostic-msgs, easynav-common, easynav-sensors, geometry-msgs, nav-msgs, pluginlib, rclcpp, rclcpp-lifecycle, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-kilted-easynav-core";
  version = "0.5.1-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/EasyNavigation-release/archive/release/kilted/easynav_core/0.5.1-1.tar.gz";
    name = "0.5.1-1.tar.gz";
    sha256 = "ef1905daed4cf516acdf3575aee5982618bb4c72de93a81ee1fb7c063d0d978a";
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
