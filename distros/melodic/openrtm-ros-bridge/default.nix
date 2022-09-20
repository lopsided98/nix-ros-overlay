
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, openrtm-tools, roscpp, rostest, rtmbuild, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-openrtm-ros-bridge";
  version = "1.4.3-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/rtmros_common-release/archive/release/melodic/openrtm_ros_bridge/1.4.3-1.tar.gz";
    name = "1.4.3-1.tar.gz";
    sha256 = "7ea540a376bea8c3571a05fa6a377fb08b527310ad3e2be525f32fe03d28f622";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation rostest rtmbuild ];
  propagatedBuildInputs = [ openrtm-tools roscpp std-msgs ];
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
