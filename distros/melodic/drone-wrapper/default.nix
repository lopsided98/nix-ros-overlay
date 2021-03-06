
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, gazebo-ros, geometry-msgs, mavros, mavros-msgs, rospy, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-drone-wrapper";
  version = "1.3.7-r3";

  src = fetchurl {
    url = "https://github.com/JdeRobot/drones-release/archive/release/melodic/drone_wrapper/1.3.7-3.tar.gz";
    name = "1.3.7-3.tar.gz";
    sha256 = "77d3e15f0fa014cbe4d437a9a12845908c7d03ca9292801b16903d77139610ae";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cv-bridge gazebo-ros geometry-msgs mavros mavros-msgs rospy sensor-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The drone_wrapper package'';
    license = with lib.licenses; [ mit ];
  };
}
