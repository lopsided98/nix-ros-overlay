
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, xpp-states, xpp-msgs, kdl-parser, catkin, roscpp, robot-state-publisher, visualization-msgs, tf, rosunit }:
buildRosPackage {
  pname = "ros-melodic-xpp-vis";
  version = "1.0.9";

  src = fetchurl {
    url = https://github.com/leggedrobotics/xpp-release/archive/release/melodic/xpp_vis/1.0.9-0.tar.gz;
    sha256 = "27a413f9b6c6b80509d79ccab7f27e83cc2245361d958023980e36b5578a9632";
  };

  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ xpp-states xpp-msgs kdl-parser robot-state-publisher visualization-msgs tf roscpp ];
  nativeBuildInputs = [ xpp-states xpp-msgs kdl-parser robot-state-publisher visualization-msgs tf catkin roscpp ];

  meta = {
    description = ''Visualization for the XPP Motion Framework.'';
    #license = lib.licenses.BSD;
  };
}
