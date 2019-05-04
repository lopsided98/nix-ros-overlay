
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rospack, camera-info-manager, image-transport, camera-calibration-parsers, catkin, roscpp, rostest, message-generation, message-runtime, visualization-msgs, rospy, std-msgs, roslib, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-leap-motion";
  version = "0.0.11";

  src = fetchurl {
    url = https://github.com/ros-gbp/leap_motion-release/archive/release/kinetic/leap_motion/0.0.11-0.tar.gz;
    sha256 = "49727838a653c082ad74e74e2dd60c3e4c3017121be5cbdf0ccf0931ef6da938";
  };

  buildInputs = [ rospack camera-calibration-parsers image-transport camera-info-manager roscpp message-generation visualization-msgs rospy std-msgs roslib geometry-msgs ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ rospack camera-info-manager image-transport camera-calibration-parsers roslib message-runtime visualization-msgs rospy std-msgs roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS driver for the Leap Motion gesture sensor'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
