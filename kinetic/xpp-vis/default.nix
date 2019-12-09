
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, robot-state-publisher, tf, catkin, rosunit, xpp-msgs, visualization-msgs, roscpp, xpp-states, kdl-parser }:
buildRosPackage {
  pname = "ros-kinetic-xpp-vis";
  version = "1.0.10";

  src = fetchurl {
    url = "https://github.com/leggedrobotics/xpp-release/archive/release/kinetic/xpp_vis/1.0.10-0.tar.gz";
    name = "1.0.10-0.tar.gz";
    sha256 = "b1239f90020cc8a51a975511635f1947f5cacb024b4f2a5fe60941f8dc01a2de";
  };

  buildType = "catkin";
  buildInputs = [ robot-state-publisher tf xpp-msgs visualization-msgs roscpp xpp-states kdl-parser ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ robot-state-publisher tf xpp-msgs visualization-msgs roscpp xpp-states kdl-parser ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Visualization for the XPP Motion Framework.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
