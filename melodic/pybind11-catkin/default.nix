
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python, catkin, pythonPackages, rospy, eigen }:
buildRosPackage {
  pname = "ros-melodic-pybind11-catkin";
  version = "2.2.4-r6";

  src = fetchurl {
    url = https://github.com/wxmerkt/pybind11_catkin-release/archive/release/melodic/pybind11_catkin/2.2.4-6.tar.gz;
    sha256 = "5252e0b91e05e1f8d2cb6bd845b6c29d53e704c82511371a7be979d51a488f48";
  };

  buildInputs = [ python pythonPackages.numpy rospy eigen ];
  propagatedBuildInputs = [ python pythonPackages.numpy rospy eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pybind11 package'';
    #license = lib.licenses.BSD;
  };
}
