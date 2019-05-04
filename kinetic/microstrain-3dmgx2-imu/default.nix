
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, self-test, tf, sensor-msgs, catkin, diagnostic-updater, message-generation, message-runtime, std-msgs, roscpp, log4cxx }:
buildRosPackage {
  pname = "ros-kinetic-microstrain-3dmgx2-imu";
  version = "1.5.12-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/microstrain_3dmgx2_imu-release/archive/release/kinetic/microstrain_3dmgx2_imu/1.5.12-1.tar.gz;
    sha256 = "7a44d0870f6145f9f6080a344e3d1a0c22ea3eb80c872ad409b0265d03a9780e";
  };

  buildInputs = [ std-srvs self-test sensor-msgs roscpp diagnostic-updater message-generation std-msgs tf log4cxx ];
  propagatedBuildInputs = [ std-srvs self-test sensor-msgs roscpp diagnostic-updater message-runtime std-msgs tf log4cxx ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A driver for IMUs compatible the microstrain 3DM-GX2 and 3DM-GX3 protocol. Includes 
    a heavily modified standalone driver pulled from the player distribution, 
    and a ROS node.'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
