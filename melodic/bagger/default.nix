
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, rosbag, catkin, rostest, nav-msgs, message-generation, message-runtime, rospy, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-bagger";
  version = "0.1.3";

  src = fetchurl {
    url = https://github.com/squarerobot/bagger-release/archive/release/melodic/bagger/0.1.3-0.tar.gz;
    sha256 = "e8275de0f4ad29f758472ae12d8ce534b53705ec57066e8611498b6077188226";
  };

  checkInputs = [ nav-msgs geometry-msgs ];
  propagatedBuildInputs = [ rostest message-runtime rospy std-msgs rosbag roscpp ];
  nativeBuildInputs = [ rostest message-generation roslint std-msgs catkin roscpp ];

  meta = {
    description = ''An application used to systematically record rosbags'';
    #license = lib.licenses.BSD;
  };
}
