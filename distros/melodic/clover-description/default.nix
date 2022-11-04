
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-plugins, gazebo-ros, xacro }:
buildRosPackage {
  pname = "ros-melodic-clover-description";
  version = "0.21.2-r1";

  src = fetchurl {
    url = "https://github.com/CopterExpress/clover-release/archive/release/melodic/clover_description/0.21.2-1.tar.gz";
    name = "0.21.2-1.tar.gz";
    sha256 = "343e10bb269be05deb36111a2ca4bbdb6adde31de38df4ff7d660bd35a2fa77e";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ gazebo-plugins gazebo-ros xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The clover_description package provides URDF models of the Clover series of quadcopters.'';
    license = with lib.licenses; [ mit ];
  };
}
