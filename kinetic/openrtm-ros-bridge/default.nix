
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, openrtm-tools, catkin, rostest, message-generation, std-msgs, roscpp, rtmbuild }:
buildRosPackage {
  pname = "ros-kinetic-openrtm-ros-bridge";
  version = "1.4.2";

  src = fetchurl {
    url = "https://github.com/tork-a/rtmros_common-release/archive/release/kinetic/openrtm_ros_bridge/1.4.2-0.tar.gz";
    name = "1.4.2-0.tar.gz";
    sha256 = "bd98d729dfa985d85e8812fec751c9dbf1fba5cbc71a1afb5a31679a1dad2e76";
  };

  buildType = "catkin";
  buildInputs = [ openrtm-tools rostest message-generation std-msgs roscpp rtmbuild ];
  propagatedBuildInputs = [ std-msgs openrtm-tools roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''openrtm_ros_bridge package provides basic functionalities to bind
    two robotics framework: <a href="http://openrtm.org/">OpenRTM</a> and ROS.<br/>
    By using this package, you can write your ROS packages that communicate with your
    non-ROS robots that run on OpenRTM.
  		
    For communicating with the robots that run on hrpsys, you can use
    <a href="http://wiki.ros.org/hrpsys_ros_bridge">hrpsys_ros_bridge</a> package.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
