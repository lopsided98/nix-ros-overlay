
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, roscpp, catkin, nodelet }:
buildRosPackage {
  pname = "ros-lunar-nodelet-tutorial-math";
  version = "0.1.10";

  src = fetchurl {
    url = https://github.com/ros-gbp/common_tutorials-release/archive/release/lunar/nodelet_tutorial_math/0.1.10-0.tar.gz;
    sha256 = "2e96b82fe71ce0a9c419f13da0efd38018f146e04f9448d3f5ab23252352895a";
  };

  buildInputs = [ std-msgs nodelet roscpp ];
  propagatedBuildInputs = [ std-msgs nodelet roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package for Nodelet tutorial.'';
    #license = lib.licenses.BSD;
  };
}
