
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, easynav-common, easynav-controller, easynav-core, easynav-sensors, easynav-system, eigen, geometry-msgs, lifecycle-msgs, nav-msgs, pcl-conversions, pluginlib, rclcpp, rclcpp-lifecycle, sensor-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-kilted-easynav-mpc-controller";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_plugins-release/archive/release/kilted/easynav_mpc_controller/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "d13bd38c895739b7a1c9e218f70afd4eafa4518fb26947d2732224fcb40ebccf";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common easynav-controller lifecycle-msgs rclcpp-lifecycle ];
  propagatedBuildInputs = [ easynav-common easynav-core easynav-sensors easynav-system eigen geometry-msgs nav-msgs pcl-conversions pluginlib rclcpp sensor-msgs tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Easy Navigation: MPC Controller package.";
    license = with lib.licenses; [ asl20 ];
  };
}
