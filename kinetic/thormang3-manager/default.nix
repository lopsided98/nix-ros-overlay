
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, thormang3-walking-module, robotis-controller, thormang3-action-module, thormang3-gripper-module, thormang3-base-module, catkin, thormang3-feet-ft-module, thormang3-description, thormang3-imu-3dm-gx4, thormang3-head-control-module, roscpp, thormang3-manipulation-module }:
buildRosPackage {
  pname = "ros-kinetic-thormang3-manager";
  version = "0.2.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/ROBOTIS-THORMANG-MPC-release/archive/release/kinetic/thormang3_manager/0.2.0-0.tar.gz";
    name = "0.2.0-0.tar.gz";
    sha256 = "851d1a0a18226ac5e4558145c140aaae2a5c71665ff88102e871d56efc3573c6";
  };

  buildType = "catkin";
  buildInputs = [ robotis-controller thormang3-walking-module thormang3-action-module thormang3-gripper-module thormang3-base-module thormang3-feet-ft-module thormang3-head-control-module roscpp thormang3-manipulation-module ];
  propagatedBuildInputs = [ robotis-controller thormang3-walking-module thormang3-action-module thormang3-gripper-module thormang3-base-module thormang3-feet-ft-module thormang3-description thormang3-imu-3dm-gx4 thormang3-head-control-module roscpp thormang3-manipulation-module ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package describes robot manager to execute THORMANG3's motion modules.'';
    license = with lib.licenses; [ asl20 ];
  };
}
