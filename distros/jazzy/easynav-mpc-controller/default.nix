
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, easynav-common, easynav-core, easynav-sensors, easynav-simple-common, easynav-system, eigen, geometry-msgs, nav-msgs, nlopt, pcl-conversions, pluginlib, rclcpp-lifecycle, sensor-msgs, std-srvs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-easynav-mpc-controller";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_plugins-release/archive/release/jazzy/easynav_mpc_controller/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "7bf4f6d9da48fb385b6d7c550e76bdab6d42721b24544004432c2b4316cfe0b1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nlopt ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common easynav-simple-common rclcpp-lifecycle std-srvs ];
  propagatedBuildInputs = [ easynav-common easynav-core easynav-sensors easynav-system eigen geometry-msgs nav-msgs pcl-conversions pluginlib sensor-msgs tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Easy Navigation: MPC Controller package.";
    license = with lib.licenses; [ asl20 ];
  };
}
