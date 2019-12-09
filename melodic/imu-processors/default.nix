
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, geometry-msgs, tf, catkin, roscpp, nav-msgs }:
buildRosPackage {
  pname = "ros-melodic-imu-processors";
  version = "0.2.3";

  src = fetchurl {
    url = "https://github.com/ros-gbp/imu_pipeline-release/archive/release/melodic/imu_processors/0.2.3-0.tar.gz";
    name = "0.2.3-0.tar.gz";
    sha256 = "68dd63390a89e5634e7ae241aa2e8c21e8e80753d49eaf8569de7f8ac1c8dfd3";
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
