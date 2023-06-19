
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, robot-state-publisher, roslaunch, urdf, xacro }:
buildRosPackage {
  pname = "ros-melodic-create-description";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/autonomylab/create_autonomy-release/archive/release/melodic/create_description/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "98a37fc06acd0ade70a43b16e2be7684d7226c0b3decf40f5683b152d3dafaf9";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslaunch ];
  propagatedBuildInputs = [ robot-state-publisher urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Robot URDF descriptions for create_robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
