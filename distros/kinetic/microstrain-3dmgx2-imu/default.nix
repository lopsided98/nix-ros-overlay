
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, log4cxx, message-generation, message-runtime, roscpp, self-test, sensor-msgs, std-msgs, std-srvs, tf }:
buildRosPackage {
  pname = "ros-kinetic-microstrain-3dmgx2-imu";
  version = "1.5.13-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/microstrain_3dmgx2_imu-release/archive/release/kinetic/microstrain_3dmgx2_imu/1.5.13-1.tar.gz";
    name = "1.5.13-1.tar.gz";
    sha256 = "23264bcaebd0f40e5b5e50dd1f14a0965247d498b60476689fe65b81e20163ce";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ diagnostic-updater log4cxx message-runtime roscpp self-test sensor-msgs std-msgs std-srvs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A driver for IMUs compatible the microstrain 3DM-GX2 and 3DM-GX3 protocol. Includes 
    a heavily modified standalone driver pulled from the player distribution, 
    and a ROS node.'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
