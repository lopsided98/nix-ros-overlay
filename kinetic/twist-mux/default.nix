
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, twist-mux-msgs, diagnostic-updater, rostest, rostopic, visualization-msgs, rospy, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-twist-mux";
  version = "3.0.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/twist_mux-release/archive/release/kinetic/twist_mux/3.0.0-0.tar.gz;
    sha256 = "dcbf3f46aa024404abaca50eb5fbfdbd47834e16dc274bf479323781818061f8";
  };

  buildInputs = [ diagnostic-updater rostest geometry-msgs std-msgs visualization-msgs roscpp ];
  checkInputs = [ rostopic rospy ];
  propagatedBuildInputs = [ diagnostic-updater geometry-msgs std-msgs visualization-msgs twist-mux-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Twist multiplexer, which multiplex several velocity commands (topics) and
      allows to priorize or disable them (locks).'';
    #license = lib.licenses.CC BY-NC-SA 4.0;
  };
}
