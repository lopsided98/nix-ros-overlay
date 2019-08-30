
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, actionlib, rospy, tf, geometry-msgs, boost, roslint, message-generation, message-runtime, kdl-conversions, std-srvs, orocos-kdl, catkin, std-msgs, roscpp, visualization-msgs, kdl-parser, control-toolbox, sensor-msgs, cob-srvs, interactive-markers, dynamic-reconfigure }:
buildRosPackage {
  pname = "ros-kinetic-cob-frame-tracker";
  version = "0.7.8-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_control-release/archive/release/kinetic/cob_frame_tracker/0.7.8-1.tar.gz;
    sha256 = "cd49af9bb3357c1ac0cf63ad25447d35c0e1be96581c7d323f6dcf90c559bbc3";
  };

  buildInputs = [ actionlib-msgs actionlib tf geometry-msgs boost roslint message-generation kdl-conversions std-srvs orocos-kdl std-msgs roscpp visualization-msgs kdl-parser control-toolbox sensor-msgs cob-srvs interactive-markers dynamic-reconfigure ];
  propagatedBuildInputs = [ actionlib-msgs actionlib rospy tf geometry-msgs boost roslint message-runtime kdl-conversions std-srvs orocos-kdl std-msgs roscpp visualization-msgs kdl-parser control-toolbox sensor-msgs cob-srvs interactive-markers dynamic-reconfigure ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_frame_tracker package'';
    license = with lib.licenses; [ asl20 ];
  };
}
