
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosbag, rospy }:
buildRosPackage {
  pname = "ros-melodic-rosbaglive";
  version = "0.2.4";

  src = fetchurl {
    url = "https://github.com/wu-robotics/wu_ros_tools/archive/release/melodic/rosbaglive/0.2.4-0.tar.gz";
    name = "0.2.4-0.tar.gz";
    sha256 = "96a3356c1fe0467cb3049b0a3962a1a987b55aa11fc69d4dfdd9e7ec9c4d666e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rosbag rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Plays rosbags as though they were happening NOW.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
