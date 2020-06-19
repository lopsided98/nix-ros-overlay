
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher, joint-state-publisher-gui, leo-description, robot-state-publisher, rviz }:
buildRosPackage {
  pname = "ros-melodic-leo-viz";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_viz-release/archive/release/melodic/leo_viz/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "c4b64530476886266b2f97f50cf035a4b2a2612092fe2c955e412e2fbb143eca";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ joint-state-publisher joint-state-publisher-gui leo-description robot-state-publisher rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Visualization launch files and RViz configurations for Leo Rover'';
    license = with lib.licenses; [ mit ];
  };
}
