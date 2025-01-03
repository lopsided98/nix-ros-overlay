
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nodelet, nodelet-topic-tools }:
buildRosPackage {
  pname = "ros-noetic-nodelet-core";
  version = "1.11.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/nodelet_core-release/archive/release/noetic/nodelet_core/1.11.1-1.tar.gz";
    name = "1.11.1-1.tar.gz";
    sha256 = "95964d68aede1dbcdeefca16aa31a0220e48766e6c79ca6fb5e6d64db4a452f4";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ nodelet nodelet-topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Nodelet Core Metapackage";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
