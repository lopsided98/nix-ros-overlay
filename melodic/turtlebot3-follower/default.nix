
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, geometry-msgs, std-msgs, catkin, rospy, nav-msgs }:
buildRosPackage {
  pname = "ros-melodic-turtlebot3-follower";
  version = "1.1.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/turtlebot3_applications-release/archive/release/melodic/turtlebot3_follower/1.1.0-0.tar.gz";
    name = "1.1.0-0.tar.gz";
    sha256 = "f2059a2728165ba5974739c04cabd2e782f3c06bff35299c149836c98bc6a429";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs geometry-msgs std-msgs rospy nav-msgs ];
  propagatedBuildInputs = [ sensor-msgs geometry-msgs std-msgs rospy nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The follower demo was implemented using a 360 Laser Distance Sensor LDS-01. The classification algorithm is used based on previous fitting with samples of person and obstacles positions to take actions. It follows someone in front of the robot within a 50 centimeter range and 140 degrees.'';
    license = with lib.licenses; [ asl20 ];
  };
}
