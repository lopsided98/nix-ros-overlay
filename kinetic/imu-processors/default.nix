
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, geometry-msgs, tf, catkin, roscpp, nav-msgs }:
buildRosPackage {
  pname = "ros-kinetic-imu-processors";
  version = "0.2.3";

  src = fetchurl {
    url = "https://github.com/ros-gbp/imu_pipeline-release/archive/release/kinetic/imu_processors/0.2.3-0.tar.gz";
    name = "0.2.3-0.tar.gz";
    sha256 = "f42b36cc5c874042cf826732d1f68361621bf020b4080686882cdc4e791c8264";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs geometry-msgs tf roscpp nav-msgs ];
  propagatedBuildInputs = [ sensor-msgs geometry-msgs tf roscpp nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Processors for sensor_msgs::Imu data'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
