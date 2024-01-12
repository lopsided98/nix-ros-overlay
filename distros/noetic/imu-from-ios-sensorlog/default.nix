
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, rospy, sensor-msgs, std-msgs, tf2 }:
buildRosPackage {
  pname = "ros-noetic-imu-from-ios-sensorlog";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/pietrocolombo/imu_from_ios_sensorlog-release/archive/release/noetic/imu_from_ios_sensorlog/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "de580184eeb098f142326b78523af1340057916f3989a42a7c05a607674ae44d";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ roscpp rospy sensor-msgs std-msgs tf2 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The imu_from_ios_sensorlog package'';
    license = with lib.licenses; [ "TODO-CATKIN-PACKAGE-LICENSE" ];
  };
}
