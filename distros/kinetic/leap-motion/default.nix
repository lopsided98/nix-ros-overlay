
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-calibration-parsers, camera-info-manager, catkin, geometry-msgs, image-transport, message-generation, message-runtime, roscpp, roslib, rospack, rospy, rostest, std-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-leap-motion";
  version = "0.0.11";

  src = fetchurl {
    url = "https://github.com/ros-gbp/leap_motion-release/archive/release/kinetic/leap_motion/0.0.11-0.tar.gz";
    name = "0.0.11-0.tar.gz";
    sha256 = "49727838a653c082ad74e74e2dd60c3e4c3017121be5cbdf0ccf0931ef6da938";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ camera-calibration-parsers camera-info-manager geometry-msgs image-transport message-runtime roscpp roslib rospack rospy std-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS driver for the Leap Motion gesture sensor'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
