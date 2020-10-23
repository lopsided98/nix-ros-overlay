
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher, joint-state-publisher-gui, leo-description, robot-state-publisher, rviz }:
buildRosPackage {
  pname = "ros-noetic-leo-viz";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_desktop-release/archive/release/noetic/leo_viz/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "fff41ccc9204d7a0fc66672b07c3b4865dc2cd64112f7e8ce2fe23778121c383";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ joint-state-publisher joint-state-publisher-gui leo-description robot-state-publisher rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Visualization launch files and RViz configurations for Leo Rover'';
    license = with lib.licenses; [ mit ];
  };
}
