
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, kdl-parser, robot-state-publisher, roscpp, rosunit, tf, visualization-msgs, xpp-msgs, xpp-states }:
buildRosPackage {
  pname = "ros-melodic-xpp-vis";
  version = "1.0.10";

  src = fetchurl {
    url = "https://github.com/leggedrobotics/xpp-release/archive/release/melodic/xpp_vis/1.0.10-0.tar.gz";
    name = "1.0.10-0.tar.gz";
    sha256 = "a28dddd1ac40ec97257e52ee5f1dc6b2a0989fcf0fceccba4698019bbcfe56e7";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ kdl-parser robot-state-publisher roscpp tf visualization-msgs xpp-msgs xpp-states ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Visualization for the XPP Motion Framework.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
