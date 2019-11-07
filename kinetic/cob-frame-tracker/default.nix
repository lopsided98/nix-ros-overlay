
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, actionlib, rospy, tf, geometry-msgs, boost, roslint, message-generation, message-runtime, kdl-conversions, std-srvs, orocos-kdl, catkin, std-msgs, roscpp, visualization-msgs, kdl-parser, control-toolbox, sensor-msgs, cob-srvs, interactive-markers, dynamic-reconfigure }:
buildRosPackage {
  pname = "ros-kinetic-cob-frame-tracker";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/kinetic/cob_frame_tracker/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "e97f614ae9859cce3b4cae35bc11f81565aad2130ddd2d4e566239f8840fb469";
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
