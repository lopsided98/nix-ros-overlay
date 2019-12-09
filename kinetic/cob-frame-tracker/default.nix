
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, control-toolbox, interactive-markers, tf, actionlib-msgs, cob-srvs, kdl-parser, sensor-msgs, dynamic-reconfigure, orocos-kdl, std-msgs, std-srvs, catkin, roscpp, rospy, message-generation, kdl-conversions, boost, actionlib, roslint, visualization-msgs, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-cob-frame-tracker";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/kinetic/cob_frame_tracker/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "e97f614ae9859cce3b4cae35bc11f81565aad2130ddd2d4e566239f8840fb469";
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
