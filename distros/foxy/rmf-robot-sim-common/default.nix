
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, geometry-msgs, rclcpp, rmf-building-map-msgs, rmf-dispenser-msgs, rmf-fleet-msgs, rmf-ingestor-msgs, std-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-foxy-rmf-robot-sim-common";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_simulation-release/archive/release/foxy/rmf_robot_sim_common/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "190e376e2c67126c9dc175b335ff184cae2ee7a5bbcc58bce72d1accc4fc8d67";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ eigen geometry-msgs rclcpp rmf-building-map-msgs rmf-dispenser-msgs rmf-fleet-msgs rmf-ingestor-msgs std-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Common utility functions for Gazebo and ignition RMF plugins'';
    license = with lib.licenses; [ asl20 ];
  };
}
