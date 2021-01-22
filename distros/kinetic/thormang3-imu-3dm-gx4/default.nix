
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, diagnostic-updater, geometry-msgs, message-generation, message-runtime, roscpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-thormang3-imu-3dm-gx4";
  version = "0.2.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/ROBOTIS-THORMANG-MPC-SENSORs-release/archive/release/kinetic/thormang3_imu_3dm_gx4/0.2.0-0.tar.gz";
    name = "0.2.0-0.tar.gz";
    sha256 = "38f7df44a151ce5072c1de91c4382066ee5b305dd0f572b121065f337acf8e34";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ boost diagnostic-updater geometry-msgs message-runtime roscpp sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver for Microstrain 3DM-GX4-25 IMU
    This package is modified by robotis.
    The original version is Kumar Robotics's imu_3dm_gx4 package.'';
    license = with lib.licenses; [ asl20 ];
  };
}
