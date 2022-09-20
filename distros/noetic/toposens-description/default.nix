
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher, robot-state-publisher, rviz, urdf, xacro }:
buildRosPackage {
  pname = "ros-noetic-toposens-description";
  version = "2.3.2-r2";

  src = fetchurl {
    url = "https://gitlab.com/toposens/public/toposens-release/-/archive/release/noetic/toposens_description/2.3.2-2/archive.tar.gz";
    name = "archive.tar.gz";
    sha256 = "8ad188cbefde05810ca844cadc822522698b5614337c7dd70a5976aa04d1c05d";
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
