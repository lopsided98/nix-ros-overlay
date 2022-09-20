
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, interactive-marker-proxy, kdl-parser, message-generation, message-runtime, moveit-msgs, orocos-kdl, robot-state-publisher, rosbridge-server, rospy, roswww, rwt-utils-3rdparty, sensor-msgs, std-msgs, tf, tf2-web-republisher, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-rwt-moveit";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/visualization_rwt-release/archive/release/melodic/rwt_moveit/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "4cc126eb4bb0bd7be316e06cc2a2421ae8aa3d17089f5dbc759b8d2d3cd57204";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ interactive-marker-proxy kdl-parser message-runtime moveit-msgs orocos-kdl robot-state-publisher rosbridge-server rospy roswww rwt-utils-3rdparty sensor-msgs std-msgs tf tf2-web-republisher visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a web user interface of <a href="http://moveit.ros.org/">MoveIt!</a> on top of visualizer in <a href="http://wiki.ros.org/ros3djs">ros3djs</a>.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
