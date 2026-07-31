
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, easynav-common, easynav-core, easynav-sensors, easynav-simple-common, easynav-system, geometry-msgs, nav-msgs, nlopt, pcl-conversions, pluginlib, rclcpp, rclcpp-lifecycle, sensor-msgs, std-srvs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-lyrical-easynav-mpc-controller";
  version = "0.4.2-r2";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_plugins-release/archive/release/lyrical/easynav_mpc_controller/0.4.2-2.tar.gz";
    name = "0.4.2-2.tar.gz";
    sha256 = "cd10b0e1663f7a2d726931314acef6945970726fb24e7d97aa1699c9d52df022";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common easynav-simple-common rclcpp-lifecycle std-srvs ];
  propagatedBuildInputs = [ easynav-common easynav-core easynav-sensors easynav-system geometry-msgs nav-msgs nlopt pcl-conversions pluginlib rclcpp sensor-msgs tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Easy Navigation: MPC Controller package.";
    license = with lib.licenses; [ asl20 ];
  };
}
