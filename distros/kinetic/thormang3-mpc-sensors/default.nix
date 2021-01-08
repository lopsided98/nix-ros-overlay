
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, thormang3-imu-3dm-gx4 }:
buildRosPackage {
  pname = "ros-kinetic-thormang3-mpc-sensors";
  version = "0.2.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/ROBOTIS-THORMANG-MPC-SENSORs-release/archive/release/kinetic/thormang3_mpc_sensors/0.2.0-0.tar.gz";
    name = "0.2.0-0.tar.gz";
    sha256 = "bfa07c28220662ca36ccadf0c2c7a48345a968981087a27f3e3606e98a97dfdb";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ thormang3-imu-3dm-gx4 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS packages for the thormang3_mpc_sensors (meta package)'';
    license = with lib.licenses; [ asl20 ];
  };
}
