
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, tf, catkin, dccomms-ros-msgs, message-generation, actionlib, message-runtime, rospy, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-melodic-dccomms-ros";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/dcentelles/dccomms_ros_pkgs-release/archive/release/melodic/dccomms_ros/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "62f9b1c9b8fbfa893bde827b62ca9822e27a07bffa531426f4ebf4c68577ba37";
  };

  buildType = "catkin";
  buildInputs = [ actionlib-msgs roscpp rospy dccomms-ros-msgs message-generation actionlib std-msgs tf ];
  propagatedBuildInputs = [ actionlib-msgs roscpp rospy dccomms-ros-msgs message-runtime actionlib std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The dccomms_ros package'';
    license = with lib.licenses; [ "TODO" ];
  };
}
