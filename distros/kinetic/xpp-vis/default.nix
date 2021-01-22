
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, kdl-parser, robot-state-publisher, roscpp, rosunit, tf, visualization-msgs, xpp-msgs, xpp-states }:
buildRosPackage {
  pname = "ros-kinetic-xpp-vis";
  version = "1.0.10";

  src = fetchurl {
    url = "https://github.com/leggedrobotics/xpp-release/archive/release/kinetic/xpp_vis/1.0.10-0.tar.gz";
    name = "1.0.10-0.tar.gz";
    sha256 = "b1239f90020cc8a51a975511635f1947f5cacb024b4f2a5fe60941f8dc01a2de";
  };

  buildType = "catkin";
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ kdl-parser robot-state-publisher roscpp tf visualization-msgs xpp-msgs xpp-states ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Visualization for the XPP Motion Framework.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
