
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, qt5, roscpp, rviz, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-agni-tf-tools";
  version = "0.1.6-r1";

  src = fetchurl {
    url = "https://github.com/ubi-agni-gbp/agni_tf_tools-release/archive/release/melodic/agni_tf_tools/0.1.6-1.tar.gz";
    name = "0.1.6-1.tar.gz";
    sha256 = "f5d19d9f1dc379c8c62bda3e4a624f18271250442ee76d32fb8d2fe9a9c0f2f9";
  };

  buildType = "catkin";
  buildInputs = [ catkin eigen qt5.qtbase ];
  propagatedBuildInputs = [ roscpp rviz tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a gui program as well as a rviz plugin to publish static transforms.
  Both support the transformation between various Euler angle representations.
  The rviz plugin also allows to configure the transform with an interactive marker.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
