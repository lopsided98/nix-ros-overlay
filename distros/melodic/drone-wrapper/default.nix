
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, gazebo-ros, geometry-msgs, mavros, mavros-msgs, rospy, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-drone-wrapper";
  version = "1.3.2-r5";

  src = fetchurl {
    url = "https://github.com/JdeRobot/drones-release/archive/release/melodic/drone_wrapper/1.3.2-5.tar.gz";
    name = "1.3.2-5.tar.gz";
    sha256 = "7afff7462229bac570e4d3f8b781505c87d4b1441dd2cf802bae28f7804cf038";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cv-bridge gazebo-ros geometry-msgs mavros mavros-msgs rospy sensor-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The drone_wrapper package'';
    license = with lib.licenses; [ mit ];
  };
}
