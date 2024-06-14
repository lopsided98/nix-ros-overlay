
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, gz-gui-vendor, gz-msgs-vendor, gz-plugin-vendor, gz-rendering-vendor, gz-sim-vendor, gz-transport-vendor, qt5, rclcpp, rmf-building-map-msgs, rmf-building-sim-gz-plugins, rmf-fleet-msgs, rmf-robot-sim-common }:
buildRosPackage {
  pname = "ros-rolling-rmf-robot-sim-gz-plugins";
  version = "2.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_simulation-release/archive/release/rolling/rmf_robot_sim_gz_plugins/2.3.1-1.tar.gz";
    name = "2.3.1-1.tar.gz";
    sha256 = "8d78dc661217a07a0162479ffef73d6ce6f8cf5af65f09886ddf3b8dbb7f4d23";
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
