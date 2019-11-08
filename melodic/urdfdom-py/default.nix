
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, rospy }:
buildRosPackage {
  pname = "ros-melodic-urdfdom-py";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/urdfdom_py-release/archive/release/melodic/urdfdom_py/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "5b370bb94a9ec59cf4e237cb34375eadfbae019f2f5d8cc30f43861bda88295b";
  };

  buildType = "catkin";
  checkInputs = [ pythonPackages.mock ];
  propagatedBuildInputs = [ pythonPackages.lxml pythonPackages.pyyaml rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Python implementation of the URDF parser.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
