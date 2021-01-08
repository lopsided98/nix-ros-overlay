
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, qt5, roscpp, rviz, tf2-ros }:
buildRosPackage {
  pname = "ros-kinetic-agni-tf-tools";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ubi-agni-gbp/agni_tf_tools-release/archive/release/kinetic/agni_tf_tools/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "690ffbece3374b5ed1d4321c3e4bfd9e619676d184ee67406610af006584a545";
  };

  buildType = "catkin";
  buildInputs = [ eigen qt5.qtbase ];
  propagatedBuildInputs = [ roscpp rviz tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a gui program as well as a rviz plugin to publish static transforms.
  Both support the transformation between various Euler angle representations.
  The rviz plugin also allows to configure the transform with an interactive marker.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
