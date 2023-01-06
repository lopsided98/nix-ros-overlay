
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, nav-msgs, roscpp, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-imu-processors";
  version = "0.2.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/imu_pipeline-release/archive/release/melodic/imu_processors/0.2.4-1.tar.gz";
    name = "0.2.4-1.tar.gz";
    sha256 = "5cb336af69513d32e17e25cb9cc8bd7e51176eb14e67e38b37ee9ab527c85da1";
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
