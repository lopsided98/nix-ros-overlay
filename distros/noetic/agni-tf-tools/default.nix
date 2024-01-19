
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, qt5, roscpp, rviz, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-agni-tf-tools";
  version = "0.1.6-r1";

  src = fetchurl {
    url = "https://github.com/ubi-agni-gbp/agni_tf_tools-release/archive/release/noetic/agni_tf_tools/0.1.6-1.tar.gz";
    name = "0.1.6-1.tar.gz";
    sha256 = "43daaec7c8cc80d4b4114d5f6401947f23c7a2ae8a1f8661bfb9ded96c435392";
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
