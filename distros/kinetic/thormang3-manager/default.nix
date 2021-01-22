
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, robotis-controller, roscpp, thormang3-action-module, thormang3-base-module, thormang3-description, thormang3-feet-ft-module, thormang3-gripper-module, thormang3-head-control-module, thormang3-imu-3dm-gx4, thormang3-manipulation-module, thormang3-walking-module }:
buildRosPackage {
  pname = "ros-kinetic-thormang3-manager";
  version = "0.2.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/ROBOTIS-THORMANG-MPC-release/archive/release/kinetic/thormang3_manager/0.2.0-0.tar.gz";
    name = "0.2.0-0.tar.gz";
    sha256 = "851d1a0a18226ac5e4558145c140aaae2a5c71665ff88102e871d56efc3573c6";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ robotis-controller roscpp thormang3-action-module thormang3-base-module thormang3-description thormang3-feet-ft-module thormang3-gripper-module thormang3-head-control-module thormang3-imu-3dm-gx4 thormang3-manipulation-module thormang3-walking-module ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package describes robot manager to execute THORMANG3's motion modules.'';
    license = with lib.licenses; [ asl20 ];
  };
}
