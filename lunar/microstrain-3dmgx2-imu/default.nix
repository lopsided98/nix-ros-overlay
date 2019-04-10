
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, self-test, tf, sensor-msgs, catkin, diagnostic-updater, message-generation, message-runtime, std-msgs, roscpp, log4cxx }:
buildRosPackage {
  pname = "ros-lunar-microstrain-3dmgx2-imu";
  version = "1.5.12";

  src = fetchurl {
    url = https://github.com/ros-gbp/microstrain_3dmgx2_imu-release/archive/release/lunar/microstrain_3dmgx2_imu/1.5.12-0.tar.gz;
    sha256 = "655d24fa5113a4d88ab7577ef57e9ff803073cb0b49cae1b321f002ca0392625";
  };

  buildInputs = [ std-srvs self-test sensor-msgs roscpp diagnostic-updater message-generation std-msgs tf log4cxx ];
  propagatedBuildInputs = [ std-srvs self-test sensor-msgs roscpp diagnostic-updater message-runtime std-msgs tf log4cxx ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A driver for IMUs compatible the microstrain 3DM-GX2 and 3DM-GX3 protocol. Includes 
    a heavily modified standalone driver pulled from the player distribution, 
    and a ROS node.'';
    #license = lib.licenses.LGPL;
  };
}
