
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher, joint-state-publisher-gui, leo-description, robot-state-publisher, rviz }:
buildRosPackage {
  pname = "ros-melodic-leo-viz";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_desktop-release/archive/release/melodic/leo_viz/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "a1b653f6c43d6dd2673f101a8a989f7b035220235fe6f840faacd1a8cab81ccb";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ joint-state-publisher joint-state-publisher-gui leo-description robot-state-publisher rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Visualization launch files and RViz configurations for Leo Rover'';
    license = with lib.licenses; [ mit ];
  };
}
