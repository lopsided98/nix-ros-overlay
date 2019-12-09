
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, message-runtime, std-msgs, camera-info-manager, catkin, roslib, image-transport, rospy, visualization-msgs, roscpp, message-generation, camera-calibration-parsers, rostest, rospack }:
buildRosPackage {
  pname = "ros-kinetic-leap-motion";
  version = "0.0.11";

  src = fetchurl {
    url = "https://github.com/ros-gbp/leap_motion-release/archive/release/kinetic/leap_motion/0.0.11-0.tar.gz";
    name = "0.0.11-0.tar.gz";
    sha256 = "49727838a653c082ad74e74e2dd60c3e4c3017121be5cbdf0ccf0931ef6da938";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs std-msgs camera-info-manager roslib image-transport rospy visualization-msgs roscpp message-generation camera-calibration-parsers rospack ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ geometry-msgs message-runtime std-msgs camera-info-manager roslib image-transport visualization-msgs roscpp rospy camera-calibration-parsers rospack ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS driver for the Leap Motion gesture sensor'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
