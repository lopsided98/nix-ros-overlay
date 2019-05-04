
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, roscpp, nav-msgs, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-imu-processors";
  version = "0.2.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/imu_pipeline-release/archive/release/kinetic/imu_processors/0.2.3-0.tar.gz;
    sha256 = "f42b36cc5c874042cf826732d1f68361621bf020b4080686882cdc4e791c8264";
  };

  buildInputs = [ sensor-msgs roscpp nav-msgs tf geometry-msgs ];
  propagatedBuildInputs = [ sensor-msgs roscpp nav-msgs tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Processors for sensor_msgs::Imu data'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
