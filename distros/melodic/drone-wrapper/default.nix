
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, gazebo-ros, geometry-msgs, mavros, mavros-msgs, rospy, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-drone-wrapper";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/JdeRobot/drones-release/archive/release/melodic/drone_wrapper/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "eefc23a804dccfef4f52dc80a88e651a8951456d534d523ec11075f2eb72e6b7";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cv-bridge gazebo-ros geometry-msgs mavros mavros-msgs rospy sensor-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The drone_wrapper package'';
    license = with lib.licenses; [ mit ];
  };
}
