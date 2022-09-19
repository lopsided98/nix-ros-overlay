
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, qt5, rclcpp, rmf-building-map-msgs, rmf-fleet-msgs, rmf-robot-sim-common }:
buildRosPackage {
  pname = "ros-humble-rmf-robot-sim-ignition-plugins";
  version = "1.2.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_simulation-release/archive/release/humble/rmf_robot_sim_ignition_plugins/1.2.0-4.tar.gz";
    name = "1.2.0-4.tar.gz";
    sha256 = "21ea9c63838111f8d53ce0c8b376a5214d33e52995a6b33b206abd4f73d0282e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ eigen qt5.qtbase qt5.qtdeclarative rclcpp rmf-building-map-msgs rmf-fleet-msgs rmf-robot-sim-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS 2 Ignition plugins for TeleportIngestors and TeleportDispensers'';
    license = with lib.licenses; [ asl20 ];
  };
}
