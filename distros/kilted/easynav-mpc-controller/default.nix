
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, easynav-common, easynav-core, easynav-sensors, easynav-simple-common, easynav-system, eigen, geometry-msgs, nav-msgs, nlopt, pcl-conversions, pluginlib, rclcpp-lifecycle, sensor-msgs, std-srvs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-kilted-easynav-mpc-controller";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_plugins-release/archive/release/kilted/easynav_mpc_controller/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "1afde48f7e75e21a7c8874d10cd8e3b75640cc72b1aa2a0299051e61711bfae8";
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
