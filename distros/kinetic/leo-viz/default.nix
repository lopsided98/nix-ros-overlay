
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher, joint-state-publisher-gui, leo-description, robot-state-publisher, rviz }:
buildRosPackage {
  pname = "ros-kinetic-leo-viz";
  version = "0.2.2-r2";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_desktop-release/archive/release/kinetic/leo_viz/0.2.2-2.tar.gz";
    name = "0.2.2-2.tar.gz";
    sha256 = "548232bff77cb36a6dfe84798010e0f299b66219324ceb92a58a7a9a04caa580";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ joint-state-publisher joint-state-publisher-gui leo-description robot-state-publisher rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Visualization launch files and RViz configurations for Leo Rover'';
    license = with lib.licenses; [ mit ];
  };
}
