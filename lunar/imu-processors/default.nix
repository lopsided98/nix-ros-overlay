
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, roscpp, nav-msgs, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-imu-processors";
  version = "0.2.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/imu_pipeline-release/archive/release/lunar/imu_processors/0.2.3-0.tar.gz;
    sha256 = "8a8732c5e428022d9d167d1db8d4eebd91acf034d400acab9944fff2b11f8f8e";
  };

  buildInputs = [ nav-msgs geometry-msgs sensor-msgs tf roscpp ];
  propagatedBuildInputs = [ nav-msgs geometry-msgs sensor-msgs tf roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Processors for sensor_msgs::Imu data'';
    #license = lib.licenses.BSD;
  };
}
