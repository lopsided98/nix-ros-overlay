
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, xpp-states, xpp-msgs, kdl-parser, catkin, roscpp, robot-state-publisher, visualization-msgs, tf, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-xpp-vis";
  version = "1.0.10";

  src = fetchurl {
    url = https://github.com/leggedrobotics/xpp-release/archive/release/kinetic/xpp_vis/1.0.10-0.tar.gz;
    sha256 = "b1239f90020cc8a51a975511635f1947f5cacb024b4f2a5fe60941f8dc01a2de";
  };

  buildInputs = [ xpp-states xpp-msgs kdl-parser tf robot-state-publisher visualization-msgs roscpp ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ xpp-states xpp-msgs kdl-parser tf robot-state-publisher visualization-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Visualization for the XPP Motion Framework.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
