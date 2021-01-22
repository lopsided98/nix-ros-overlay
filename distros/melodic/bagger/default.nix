
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, nav-msgs, rosbag, roscpp, roslint, rospy, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-bagger";
  version = "0.1.3";

  src = fetchurl {
    url = "https://github.com/squarerobot/bagger-release/archive/release/melodic/bagger/0.1.3-0.tar.gz";
    name = "0.1.3-0.tar.gz";
    sha256 = "e8275de0f4ad29f758472ae12d8ce534b53705ec57066e8611498b6077188226";
  };

  buildType = "catkin";
  buildInputs = [ message-generation roslint ];
  checkInputs = [ geometry-msgs nav-msgs ];
  propagatedBuildInputs = [ message-runtime rosbag roscpp rospy rostest std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An application used to systematically record rosbags'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
