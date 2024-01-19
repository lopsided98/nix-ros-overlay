
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, log4cxx, message-generation, message-runtime, roscpp, self-test, sensor-msgs, std-msgs, std-srvs, tf }:
buildRosPackage {
  pname = "ros-noetic-microstrain-3dmgx2-imu";
  version = "1.5.13-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/microstrain_3dmgx2_imu-release/archive/release/noetic/microstrain_3dmgx2_imu/1.5.13-1.tar.gz";
    name = "1.5.13-1.tar.gz";
    sha256 = "d4c264bcc54eedddc778acdb0679cd9feae75ed9014b03a4e3f61038e6e23c98";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ diagnostic-updater log4cxx message-runtime roscpp self-test sensor-msgs std-msgs std-srvs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A driver for IMUs compatible the microstrain 3DM-GX2 and 3DM-GX3 protocol. Includes 
    a heavily modified standalone driver pulled from the player distribution, 
    and a ROS node.'';
    license = with lib.licenses; [ "LGPL" ];
  };
}
