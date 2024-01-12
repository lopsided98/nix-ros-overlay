
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, kdl-parser, robot-state-publisher, roscpp, rosunit, tf, visualization-msgs, xpp-msgs, xpp-states }:
buildRosPackage {
  pname = "ros-noetic-xpp-vis";
  version = "1.0.10-r1";

  src = fetchurl {
    url = "https://github.com/leggedrobotics/xpp-release/archive/release/noetic/xpp_vis/1.0.10-1.tar.gz";
    name = "1.0.10-1.tar.gz";
    sha256 = "b421fcd1fc81fd9db475406fcf042fc59f6de51bdac34b282e46c430926bd37f";
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
