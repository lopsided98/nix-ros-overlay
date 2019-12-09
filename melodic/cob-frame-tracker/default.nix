
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, control-toolbox, interactive-markers, tf, actionlib-msgs, cob-srvs, kdl-parser, sensor-msgs, dynamic-reconfigure, orocos-kdl, std-msgs, std-srvs, catkin, roscpp, rospy, message-generation, kdl-conversions, boost, actionlib, roslint, visualization-msgs, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-cob-frame-tracker";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/melodic/cob_frame_tracker/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "99edb7d79527805ee5010885fb6b60afe4ba9121448605699553ca960a333ccc";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs control-toolbox interactive-markers tf actionlib-msgs cob-srvs kdl-parser sensor-msgs dynamic-reconfigure orocos-kdl std-msgs std-srvs roscpp message-generation kdl-conversions boost actionlib roslint visualization-msgs ];
  propagatedBuildInputs = [ geometry-msgs control-toolbox interactive-markers tf actionlib-msgs cob-srvs kdl-parser sensor-msgs dynamic-reconfigure orocos-kdl std-msgs std-srvs roscpp rospy kdl-conversions boost actionlib roslint visualization-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_frame_tracker package'';
    license = with lib.licenses; [ asl20 ];
  };
}
