
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher, joint-state-publisher-gui, leo-description, robot-state-publisher, rviz, xacro }:
buildRosPackage {
  pname = "ros-noetic-leo-viz";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_desktop-release/archive/release/noetic/leo_viz/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "31d7602ce42239e923ad620029814f61a61bb8b1dce33091d7c51456f01c5d10";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ joint-state-publisher joint-state-publisher-gui leo-description robot-state-publisher rviz xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Visualization launch files and RViz configurations for Leo Rover'';
    license = with lib.licenses; [ mit ];
  };
}
