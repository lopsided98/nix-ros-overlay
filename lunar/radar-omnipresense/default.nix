
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rostest, message-generation, message-runtime, rospy, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-lunar-radar-omnipresense";
  version = "0.3.0";

  src = fetchurl {
    url = https://github.com/SCU-RSL-ROS/radar_omnipresense-release/archive/release/lunar/radar_omnipresense/0.3.0-0.tar.gz;
    sha256 = "1c4e21c2cc1b1f2cf72fc0f149ea1e7d6e192680497a344f9ad93276d7440eb1";
  };

  buildInputs = [ rostest message-generation rospy std-msgs roscpp ];
  propagatedBuildInputs = [ message-generation message-runtime rospy std-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This is the radar driver package developed for the omnipresense radar module.'';
    license = with lib.licenses; [ "ECL2.0" ];
  };
}
