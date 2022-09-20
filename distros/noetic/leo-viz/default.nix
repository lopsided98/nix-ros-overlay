
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher, joint-state-publisher-gui, leo-description, robot-state-publisher, rviz }:
buildRosPackage {
  pname = "ros-noetic-leo-viz";
  version = "0.2.3-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_desktop-release/archive/release/noetic/leo_viz/0.2.3-1.tar.gz";
    name = "0.2.3-1.tar.gz";
    sha256 = "ed773e9094a5ffbfe607b216cfe80b2d1e90f6f1f03fc3d7a6f9374969d8c49f";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ joint-state-publisher joint-state-publisher-gui leo-description robot-state-publisher rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Visualization launch files and RViz configurations for Leo Rover'';
    license = with lib.licenses; [ mit ];
  };
}
