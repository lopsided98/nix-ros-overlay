
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, interactive-marker-proxy, kdl-parser, message-generation, message-runtime, moveit-msgs, orocos-kdl, robot-state-publisher, rosbridge-server, rospy, roswww, rwt-utils-3rdparty, sensor-msgs, std-msgs, tf, tf2-web-republisher, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-rwt-moveit";
  version = "0.1.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "tork-a";
        repo = "visualization_rwt-release";
        rev = "release/melodic/rwt_moveit/0.1.1-1";
        sha256 = "sha256-Y+U2pDOCVC0WD30S/VHpkcrvx/7VW7dxzLSyweZOudM=";
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
