
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, twist-mux-msgs, diagnostic-updater, rostest, rostopic, visualization-msgs, rospy, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-twist-mux";
  version = "3.0.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/twist_mux-release/archive/release/kinetic/twist_mux/3.0.0-0.tar.gz";
    name = "3.0.0-0.tar.gz";
    sha256 = "dcbf3f46aa024404abaca50eb5fbfdbd47834e16dc274bf479323781818061f8";
  };

  buildType = "catkin";
  buildInputs = [ roscpp diagnostic-updater rostest std-msgs visualization-msgs geometry-msgs ];
  checkInputs = [ rostopic rospy ];
  propagatedBuildInputs = [ twist-mux-msgs roscpp diagnostic-updater std-msgs visualization-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Twist multiplexer, which multiplex several velocity commands (topics) and
      allows to priorize or disable them (locks).'';
    license = with lib.licenses; [ cc-by-nc-sa-40 ];
  };
}
