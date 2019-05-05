
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, xpp-states, xpp-msgs, kdl-parser, catkin, roscpp, robot-state-publisher, visualization-msgs, tf, rosunit }:
buildRosPackage {
  pname = "ros-lunar-xpp-vis";
  version = "1.0.10";

  src = fetchurl {
    url = https://github.com/leggedrobotics/xpp-release/archive/release/lunar/xpp_vis/1.0.10-0.tar.gz;
    sha256 = "41cbfed3f0900a0cc0cd56601156673f13cdfff82d7f6f9d85f9d3fcc798d0ef";
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
