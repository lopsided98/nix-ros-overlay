
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, dccomms-ros-msgs, git, message-generation, message-runtime, roscpp, rospy, std-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-dccomms-ros";
  version = "0.0.2-r3";

  src = fetchurl {
    url = "https://github.com/dcentelles/dccomms_ros_pkgs-release/archive/release/melodic/dccomms_ros/0.0.2-3.tar.gz";
    name = "0.0.2-3.tar.gz";
    sha256 = "21186c2bbba1b93a960a28d092b9f9cf3a0a678bffde2fa2c673ed1b51fd1ff1";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ actionlib actionlib-msgs dccomms-ros-msgs git message-runtime roscpp rospy std-msgs tf ];
  nativeBuildInputs = [ catkin git ];

  meta = {
    description = ''The dccomms_ros package'';
    license = with lib.licenses; [ "TODO" ];
  };
}
