
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, xpp-states, xpp-msgs, kdl-parser, catkin, roscpp, robot-state-publisher, visualization-msgs, tf, rosunit }:
buildRosPackage {
  pname = "ros-melodic-xpp-vis";
  version = "1.0.10";

  src = fetchurl {
    url = https://github.com/leggedrobotics/xpp-release/archive/release/melodic/xpp_vis/1.0.10-0.tar.gz;
    sha256 = "a28dddd1ac40ec97257e52ee5f1dc6b2a0989fcf0fceccba4698019bbcfe56e7";
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
