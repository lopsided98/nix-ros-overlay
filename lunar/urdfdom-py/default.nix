
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python, catkin, pythonPackages }:
buildRosPackage {
  pname = "ros-lunar-urdfdom-py";
  version = "0.3.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/urdfdom_py-release/archive/release/lunar/urdfdom_py/0.3.3-0.tar.gz;
    sha256 = "496915ba03e4fc8a9e0f31f3af016e20f325f53e38ef13df083b4fef5deeaa46";
  };

  buildInputs = [ python ];
  propagatedBuildInputs = [ python catkin pythonPackages.lxml ];
  nativeBuildInputs = [ pythonPackages.catkin-pkg catkin ];

  meta = {
    description = ''Python implementation of the URDF parser.'';
    #license = lib.licenses.BSD;
  };
}
