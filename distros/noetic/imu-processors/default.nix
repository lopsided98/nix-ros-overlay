
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, nav-msgs, roscpp, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-imu-processors";
  version = "0.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/imu_pipeline-release/archive/release/noetic/imu_processors/0.3.1-1.tar.gz";
    name = "0.3.1-1.tar.gz";
    sha256 = "4704e54be92f4d86e9a024e96ac88d333a57636b4187f9f7f65f0af4ea045cf5";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs nav-msgs roscpp sensor-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Processors for sensor_msgs::Imu data'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
