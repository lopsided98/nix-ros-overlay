
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, self-test, tf, sensor-msgs, catkin, diagnostic-updater, message-generation, message-runtime, std-msgs, roscpp, log4cxx }:
buildRosPackage {
  pname = "ros-melodic-microstrain-3dmgx2-imu";
  version = "1.5.12-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/microstrain_3dmgx2_imu-release/archive/release/melodic/microstrain_3dmgx2_imu/1.5.12-1.tar.gz;
    sha256 = "25b441c8be65da409431657796fe7577585e401b74e363c0a81f72177d9fd2e4";
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
