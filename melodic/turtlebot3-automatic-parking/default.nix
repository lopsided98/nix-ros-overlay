
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, geometry-msgs, std-msgs, catkin, rospy, nav-msgs }:
buildRosPackage {
  pname = "ros-melodic-turtlebot3-automatic-parking";
  version = "1.1.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/turtlebot3_applications-release/archive/release/melodic/turtlebot3_automatic_parking/1.1.0-0.tar.gz";
    name = "1.1.0-0.tar.gz";
    sha256 = "5ab127fe3a3ff9c1eb767058c423d2e7625925a482c808ddf35047daaa4852be";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs geometry-msgs std-msgs rospy nav-msgs ];
  propagatedBuildInputs = [ sensor-msgs geometry-msgs std-msgs rospy nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package for turtlebot3 automatic_parking. You need a reflective tape and real robots. You can see parking spot using this pacakge on rviz.'';
    license = with lib.licenses; [ asl20 ];
  };
}
