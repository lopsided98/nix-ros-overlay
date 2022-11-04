
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, roscpp, rospy, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-radar-omnipresense";
  version = "0.3.0";

  src = fetchurl {
    url = "https://github.com/SCU-RSL-ROS/radar_omnipresense-release/archive/release/melodic/radar_omnipresense/0.3.0-0.tar.gz";
    name = "0.3.0-0.tar.gz";
    sha256 = "f82a2ead3bd79d78a4b0e123824adb03e08ca62c227ed8359c866e7f7e6fc56d";
  };

  buildType = "catkin";
  buildInputs = [ catkin rostest ];
  propagatedBuildInputs = [ message-generation message-runtime roscpp rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This is the radar driver package developed for the omnipresense radar module.'';
    license = with lib.licenses; [ "EPL-2.0" ];
  };
}
