
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, gz-gui-vendor, gz-msgs-vendor, gz-plugin-vendor, gz-rendering-vendor, gz-sim-vendor, gz-transport-vendor, qt5, rclcpp, rmf-building-map-msgs, rmf-building-sim-gz-plugins, rmf-fleet-msgs, rmf-robot-sim-common }:
buildRosPackage {
  pname = "ros-jazzy-rmf-robot-sim-gz-plugins";
  version = "2.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_simulation-release/archive/release/jazzy/rmf_robot_sim_gz_plugins/2.3.2-1.tar.gz";
    name = "2.3.2-1.tar.gz";
    sha256 = "6ea0daa9181efd5a1a625beaf15c6c709c341b68e23f2c6c5cc041785d55d546";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ eigen gz-gui-vendor gz-msgs-vendor gz-plugin-vendor gz-rendering-vendor gz-sim-vendor gz-transport-vendor qt5.qtbase qt5.qtdeclarative rclcpp rmf-building-map-msgs rmf-building-sim-gz-plugins rmf-fleet-msgs rmf-robot-sim-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 Gazebo plugins for TeleportIngestors and TeleportDispensers";
    license = with lib.licenses; [ asl20 ];
  };
}
