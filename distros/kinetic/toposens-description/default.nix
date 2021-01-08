
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher, robot-state-publisher, rviz, urdf, xacro }:
buildRosPackage {
  pname = "ros-kinetic-toposens-description";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://gitlab.com/toposens/public/toposens-release/repository/archive.tar.gz?ref=release/kinetic/toposens_description/2.1.1-1";
    name = "archive.tar.gz";
    sha256 = "18c474f5a04f5799e0930a112e711b6822249be9833f5b0895009d060cb995b4";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ joint-state-publisher robot-state-publisher rviz urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''3D models of the sensor for visualization.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
