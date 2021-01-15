
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nodelet, nodelet-topic-tools }:
buildRosPackage {
  pname = "ros-kinetic-nodelet-core";
  version = "1.9.14";

  src = fetchurl {
    url = "https://github.com/ros-gbp/nodelet_core-release/archive/release/kinetic/nodelet_core/1.9.14-0.tar.gz";
    name = "1.9.14-0.tar.gz";
    sha256 = "c4f6f3fc7da608a13f4196b39d035cf9c9474b9eb4ba3d340cc21d811ac3f31e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ nodelet nodelet-topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Nodelet Core Metapackage'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
