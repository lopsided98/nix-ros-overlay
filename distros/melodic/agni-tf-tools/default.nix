
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, qt5, roscpp, rviz, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-agni-tf-tools";
  version = "0.1.4-r2";

  src = fetchurl {
    url = "https://github.com/ubi-agni-gbp/agni_tf_tools-release/archive/release/melodic/agni_tf_tools/0.1.4-2.tar.gz";
    name = "0.1.4-2.tar.gz";
    sha256 = "ec2d2a3ebc4b6c869e7ae4a89d89129c911992f09a41c218abb899cc65d1eab4";
  };

  buildType = "catkin";
  buildInputs = [ eigen qt5.qtbase ];
  propagatedBuildInputs = [ roscpp rviz tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a gui program as well as a rviz plugin to publish static transforms.
  Both support the transformation between various Euler angle representations.
  The rviz plugin also allows to configure the transform with an interactive marker.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
