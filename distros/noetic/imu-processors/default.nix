
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, nav-msgs, roscpp, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-imu-processors";
  version = "0.3.0-r2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/imu_pipeline-release/archive/release/noetic/imu_processors/0.3.0-2.tar.gz";
    name = "0.3.0-2.tar.gz";
    sha256 = "2414b4f4622a5e70115bfe13eaec88df83bfa0de8289cebcc2336128dae8a8e0";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs nav-msgs roscpp sensor-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Processors for sensor_msgs::Imu data'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
