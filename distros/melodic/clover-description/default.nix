
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-plugins, gazebo-ros, xacro }:
buildRosPackage {
  pname = "ros-melodic-clover-description";
  version = "0.21.3-r1";

  src = fetchurl {
    url = "https://github.com/CopterExpress/clover-release/archive/release/melodic/clover_description/0.21.3-1.tar.gz";
    name = "0.21.3-1.tar.gz";
    sha256 = "a9c169ffff5118a6bb54ffa2fcc3a50278547a9cad575b887b0c1f289d71e1f2";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gazebo-plugins gazebo-ros xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The clover_description package provides URDF models of the Clover series of quadcopters.'';
    license = with lib.licenses; [ mit ];
  };
}
