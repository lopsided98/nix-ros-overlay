
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, git, message-generation, std-msgs, actionlib, tf, catkin, dccomms-ros-msgs, actionlib-msgs, rospy, roscpp, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-dccomms-ros";
  version = "0.0.2-r3";

  src = fetchurl {
    url = "https://github.com/dcentelles/dccomms_ros_pkgs-release/archive/release/melodic/dccomms_ros/0.0.2-3.tar.gz";
    name = "0.0.2-3.tar.gz";
    sha256 = "21186c2bbba1b93a960a28d092b9f9cf3a0a678bffde2fa2c673ed1b51fd1ff1";
  };

  buildType = "catkin";
  buildInputs = [ git std-msgs actionlib tf dccomms-ros-msgs actionlib-msgs rospy roscpp message-generation ];
  propagatedBuildInputs = [ git std-msgs actionlib tf dccomms-ros-msgs actionlib-msgs rospy roscpp message-runtime ];
  nativeBuildInputs = [ git catkin ];

  meta = {
    description = ''The dccomms_ros package'';
    license = with lib.licenses; [ "TODO" ];
  };
}
