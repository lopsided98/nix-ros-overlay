
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, actionlib, rospy, tf, geometry-msgs, boost, roslint, message-generation, message-runtime, kdl-conversions, std-srvs, orocos-kdl, catkin, std-msgs, roscpp, visualization-msgs, kdl-parser, control-toolbox, sensor-msgs, cob-srvs, interactive-markers, dynamic-reconfigure }:
buildRosPackage {
  pname = "ros-melodic-cob-frame-tracker";
  version = "0.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/melodic/cob_frame_tracker/0.8.0-1.tar.gz";
    name = "0.8.0-1.tar.gz";
    sha256 = "7c4a165cb98529a25a4c25849b00035f4cba3cd55685f8bdb453320d345fec6d";
  };

  buildType = "catkin";
  buildInputs = [ actionlib-msgs actionlib tf geometry-msgs boost roslint message-generation kdl-conversions std-srvs orocos-kdl std-msgs roscpp visualization-msgs kdl-parser control-toolbox sensor-msgs cob-srvs interactive-markers dynamic-reconfigure ];
  propagatedBuildInputs = [ actionlib-msgs actionlib rospy tf geometry-msgs boost roslint message-runtime kdl-conversions std-srvs orocos-kdl std-msgs roscpp visualization-msgs kdl-parser control-toolbox sensor-msgs cob-srvs interactive-markers dynamic-reconfigure ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_frame_tracker package'';
    license = with lib.licenses; [ asl20 ];
  };
}
