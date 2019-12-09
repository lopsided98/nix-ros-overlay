
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-runtime, std-msgs, catkin, rospy, roscpp, message-generation, rostest }:
buildRosPackage {
  pname = "ros-melodic-radar-omnipresense";
  version = "0.3.0";

  src = fetchurl {
    url = "https://github.com/SCU-RSL-ROS/radar_omnipresense-release/archive/release/melodic/radar_omnipresense/0.3.0-0.tar.gz";
    name = "0.3.0-0.tar.gz";
    sha256 = "f82a2ead3bd79d78a4b0e123824adb03e08ca62c227ed8359c866e7f7e6fc56d";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs rospy roscpp message-generation rostest ];
  propagatedBuildInputs = [ message-generation message-runtime std-msgs roscpp rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This is the radar driver package developed for the omnipresense radar module.'';
    license = with lib.licenses; [ "ECL2.0" ];
  };
}
