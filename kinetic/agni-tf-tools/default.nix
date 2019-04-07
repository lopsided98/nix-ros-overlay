
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, tf2-ros, rviz, eigen, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-agni-tf-tools";
  version = "0.1.1";

  src = fetchurl {
    url = https://github.com/ubi-agni-gbp/agni_tf_tools-release/archive/release/kinetic/agni_tf_tools/0.1.1-0.tar.gz;
    sha256 = "ec2098e225e210719c0b7b0ab85daad43b6bf7c914cc1e58dd01a83ed8b10176";
  };

  buildInputs = [ roscpp rviz tf2-ros eigen ];
  propagatedBuildInputs = [ roscpp rviz tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a gui program as well as a rviz plugin to publish static transforms.
  Both support the transformation between various Euler angle representations.
  The rviz plugin also allows to configure the transform with an interactive marker.'';
    #license = lib.licenses.BSD;
  };
}
