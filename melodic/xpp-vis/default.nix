
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, robot-state-publisher, tf, catkin, rosunit, xpp-msgs, visualization-msgs, roscpp, xpp-states, kdl-parser }:
buildRosPackage {
  pname = "ros-melodic-xpp-vis";
  version = "1.0.10";

  src = fetchurl {
    url = "https://github.com/leggedrobotics/xpp-release/archive/release/melodic/xpp_vis/1.0.10-0.tar.gz";
    name = "1.0.10-0.tar.gz";
    sha256 = "a28dddd1ac40ec97257e52ee5f1dc6b2a0989fcf0fceccba4698019bbcfe56e7";
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
