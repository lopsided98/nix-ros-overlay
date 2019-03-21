
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, xpp-states, xpp-msgs, kdl-parser, catkin, roscpp, robot-state-publisher, visualization-msgs, tf, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-xpp-vis";
  version = "1.0.8";

  src = fetchurl {
    url = https://github.com/leggedrobotics/xpp-release/archive/release/kinetic/xpp_vis/1.0.8-0.tar.gz;
    sha256 = "f93045a8b24199c4026b5fc244fd7a39a786a92b5680ceeae77c9044f374ae1b";
  };

  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ xpp-states xpp-msgs kdl-parser robot-state-publisher visualization-msgs tf roscpp ];
  nativeBuildInputs = [ xpp-states xpp-msgs kdl-parser robot-state-publisher visualization-msgs tf catkin roscpp ];

  meta = {
    description = ''Visualization for the XPP Motion Framework.'';
    #license = lib.licenses.BSD;
  };
}
