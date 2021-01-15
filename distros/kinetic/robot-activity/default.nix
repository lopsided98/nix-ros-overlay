
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, robot-activity-msgs, roscpp, roslint, rostest, std-srvs }:
buildRosPackage {
  pname = "ros-kinetic-robot-activity";
  version = "0.1.1";

  src = fetchurl {
    url = "https://github.com/snt-robotics/robot_activity-release/archive/release/kinetic/robot_activity/0.1.1-0.tar.gz";
    name = "0.1.1-0.tar.gz";
    sha256 = "400d06a9040dd5ed803337afcc8d7d899fcd9d44a9f6d7ac6be0ded68d02d43d";
  };

  buildType = "catkin";
  buildInputs = [ roslint ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ robot-activity-msgs roscpp std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The robot_activity package implements ROS node lifecycle'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
