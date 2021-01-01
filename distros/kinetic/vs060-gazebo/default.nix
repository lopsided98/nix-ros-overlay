
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, gazebo-ros, vs060 }:
buildRosPackage {
  pname = "ros-kinetic-vs060-gazebo";
  version = "2.0.3";

  src = fetchurl {
    url = "https://github.com/start-jsk/denso-release/archive/release/kinetic/vs060_gazebo/2.0.3-0.tar.gz";
    name = "2.0.3-0.tar.gz";
    sha256 = "1c32a1e0c12989c36b862746ea634c0e36e69b4b960ac2d70c45213692826621";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ controller-manager gazebo-ros vs060 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Gazebo simulation package for Denso vs060 arm.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
