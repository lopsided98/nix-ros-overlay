
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosbag, roslint, rospy }:
buildRosPackage {
  pname = "ros-melodic-rosbaglive";
  version = "0.2.6-r1";

  src = fetchurl {
    url = "https://github.com/wu-robotics/wu_ros_tools/archive/release/melodic/rosbaglive/0.2.6-1.tar.gz";
    name = "0.2.6-1.tar.gz";
    sha256 = "c7493934d67cb74ec6c94a40eb7089f647945123c38dd4f3e61f597eb05316fd";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ rosbag rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Plays rosbags as though they were happening NOW.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
