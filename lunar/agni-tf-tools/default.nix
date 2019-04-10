
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, tf2-ros, rviz, eigen, roscpp }:
buildRosPackage {
  pname = "ros-lunar-agni-tf-tools";
  version = "0.1.0-r1";

  src = fetchurl {
    url = https://github.com/ubi-agni-gbp/agni_tf_tools-release/archive/release/lunar/agni_tf_tools/0.1.0-1.tar.gz;
    sha256 = "1db3dcbb738b31b953fd08141178be0e52e07af5a8739f7d289e50404e455e41";
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
