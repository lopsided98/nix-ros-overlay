
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, nav-msgs, rosbag, roscpp, roslint, rospy, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-bagger";
  version = "0.1.4-r1";

  src = fetchurl {
    url = "https://github.com/squarerobot/bagger-release/archive/release/melodic/bagger/0.1.4-1.tar.gz";
    name = "0.1.4-1.tar.gz";
    sha256 = "417cbd4e7a43e72355430d0608a328aa14091eb94650d4f28910ada5e68c664f";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation roslint ];
  checkInputs = [ geometry-msgs nav-msgs ];
  propagatedBuildInputs = [ message-runtime rosbag roscpp rospy rostest std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An application used to systematically record rosbags'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
