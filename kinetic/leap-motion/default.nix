
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rospack, camera-info-manager, image-transport, camera-calibration-parsers, catkin, rostest, roslib, message-generation, message-runtime, visualization-msgs, rospy, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-leap-motion";
  version = "0.0.11";

  src = fetchurl {
    url = https://github.com/ros-gbp/leap_motion-release/archive/release/kinetic/leap_motion/0.0.11-0.tar.gz;
    sha256 = "49727838a653c082ad74e74e2dd60c3e4c3017121be5cbdf0ccf0931ef6da938";
  };

  checkInputs = [ rostest ];
  propagatedBuildInputs = [ rospack camera-info-manager image-transport camera-calibration-parsers roscpp message-runtime visualization-msgs rospy std-msgs roslib geometry-msgs ];
  nativeBuildInputs = [ rospack camera-info-manager image-transport camera-calibration-parsers catkin roscpp message-generation visualization-msgs rospy std-msgs roslib geometry-msgs ];

  meta = {
    description = ''ROS driver for the Leap Motion gesture sensor'';
    #license = lib.licenses.BSD;
  };
}
