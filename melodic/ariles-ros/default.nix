
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, libyamlcpp, catkin, eigen, roscpp }:
buildRosPackage {
  pname = "ros-melodic-ariles-ros";
  version = "1.1.1-r1";

  src = fetchurl {
    url = https://github.com/asherikov/ariles-release/archive/release/melodic/ariles_ros/1.1.1-1.tar.gz;
    sha256 = "dee2ca2288b1f598165e3f8026581e78436f1cb86b46bf995996392173b7f483";
  };

  buildInputs = [ libyamlcpp roscpp boost eigen ];
  propagatedBuildInputs = [ libyamlcpp roscpp boost eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Catkin package Ariles serialization/configuration library'';
    #license = lib.licenses.Apache 2.0;
  };
}
