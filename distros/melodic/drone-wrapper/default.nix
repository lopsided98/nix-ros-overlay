
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, gazebo-ros, geometry-msgs, mavros, mavros-msgs, rospy, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-drone-wrapper";
  version = "1.3.8-r1";

  src = fetchurl {
    url = "https://github.com/JdeRobot/drones-release/archive/release/melodic/drone_wrapper/1.3.8-1.tar.gz";
    name = "1.3.8-1.tar.gz";
    sha256 = "3f57d28446b812c2ac8222fa15e39d7ccf03a1ed7e4da881803549b5cd0038f3";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cv-bridge gazebo-ros geometry-msgs mavros mavros-msgs rospy sensor-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The drone_wrapper package'';
    license = with lib.licenses; [ mit ];
  };
}
