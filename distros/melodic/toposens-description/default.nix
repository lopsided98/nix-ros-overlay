
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher, robot-state-publisher, rviz, urdf, xacro }:
buildRosPackage {
  pname = "ros-melodic-toposens-description";
  version = "2.3.2-r1";

  src = fetchurl {
    url = "https://gitlab.com/toposens/public/toposens-release/-/archive/release/melodic/toposens_description/2.3.2-1/archive.tar.gz";
    name = "archive.tar.gz";
    sha256 = "e2330e3e02f3637502df82796debffec75eee3bdef768686b2d0c86ebe20b3b3";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ joint-state-publisher robot-state-publisher rviz urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''3D models of the sensor for visualization.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
