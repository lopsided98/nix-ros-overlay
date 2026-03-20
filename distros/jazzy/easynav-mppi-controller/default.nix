
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, easynav-common, easynav-core, easynav-simple-common, easynav-system, geometry-msgs, nav-msgs, pcl-ros, pluginlib, rclcpp-lifecycle, std-srvs, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-jazzy-easynav-mppi-controller";
  version = "0.2.1-r2";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_plugins-release/archive/release/jazzy/easynav_mppi_controller/0.2.1-2.tar.gz";
    name = "0.2.1-2.tar.gz";
    sha256 = "3bfbc40fa1a7037544fdb135867ec64dc756da955c10cfc2dc16aa7f5c56ecda";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common easynav-simple-common rclcpp-lifecycle std-srvs ];
  propagatedBuildInputs = [ easynav-common easynav-core easynav-system geometry-msgs nav-msgs pcl-ros pluginlib tf2-geometry-msgs tf2-ros visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Easy Navigation: MPPI Controller package.";
    license = with lib.licenses; [ asl20 ];
  };
}
