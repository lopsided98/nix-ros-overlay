
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, interactive-marker-proxy, message-generation, message-runtime, moveit-msgs, robot-state-publisher, rosbridge-server, rospy, roswww, rwt-utils-3rdparty, sensor-msgs, std-msgs, tf, tf2-web-republisher, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-rwt-moveit";
  version = "0.1.2-r2";

  src = fetchurl {
    url = "https://github.com/tork-a/visualization_rwt-release/archive/release/melodic/rwt_moveit/0.1.2-2.tar.gz";
    name = "0.1.2-2.tar.gz";
    sha256 = "e3d92ee436c849dd20599ea7e7cfe0da86952cdaaf89387a5915334a01476f4b";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ interactive-marker-proxy message-runtime moveit-msgs robot-state-publisher rosbridge-server rospy roswww rwt-utils-3rdparty sensor-msgs std-msgs tf tf2-web-republisher visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a web user interface of <a href="http://moveit.ros.org/">MoveIt!</a> on top of visualizer in <a href="http://wiki.ros.org/ros3djs">ros3djs</a>.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
