
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, tf2-ros, rviz, qt5, eigen, roscpp }:
buildRosPackage {
  pname = "ros-melodic-agni-tf-tools";
  version = "0.1.1-r1";

  src = fetchurl {
    url = https://github.com/ubi-agni-gbp/agni_tf_tools-release/archive/release/melodic/agni_tf_tools/0.1.1-1.tar.gz;
    sha256 = "a9e0e0179ff125da7fca8680b2428754c2fb434db0b9d190865e95f6c650645b";
  };

  buildInputs = [ rviz tf2-ros eigen roscpp qt5.qtbase ];
  propagatedBuildInputs = [ roscpp rviz tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a gui program as well as a rviz plugin to publish static transforms.
  Both support the transformation between various Euler angle representations.
  The rviz plugin also allows to configure the transform with an interactive marker.'';
    #license = lib.licenses.BSD;
  };
}
