
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, actionlib, rospy, tf, geometry-msgs, boost, roslint, message-generation, message-runtime, kdl-conversions, std-srvs, orocos-kdl, catkin, std-msgs, roscpp, visualization-msgs, kdl-parser, control-toolbox, sensor-msgs, cob-srvs, interactive-markers, dynamic-reconfigure }:
buildRosPackage {
  pname = "ros-kinetic-cob-frame-tracker";
  version = "0.7.4";

  src = fetchurl {
    url = https://github.com/ipa320/cob_control-release/archive/release/kinetic/cob_frame_tracker/0.7.4-0.tar.gz;
    sha256 = "3aa539093d6e9643706b2bb1ac5839f2bfb632ae374aba67a722c566fee2de55";
  };

  propagatedBuildInputs = [ kdl-conversions std-srvs orocos-kdl actionlib-msgs actionlib std-msgs rospy roscpp visualization-msgs tf geometry-msgs kdl-parser boost roslint control-toolbox sensor-msgs cob-srvs message-runtime interactive-markers dynamic-reconfigure ];
  nativeBuildInputs = [ kdl-conversions std-srvs orocos-kdl actionlib-msgs catkin actionlib std-msgs roscpp visualization-msgs tf geometry-msgs kdl-parser boost roslint control-toolbox sensor-msgs cob-srvs message-generation interactive-markers dynamic-reconfigure ];

  meta = {
    description = ''The cob_frame_tracker package'';
    #license = lib.licenses.Apache 2.0;
  };
}
