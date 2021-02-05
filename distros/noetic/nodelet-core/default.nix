
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nodelet, nodelet-topic-tools }:
buildRosPackage {
  pname = "ros-noetic-nodelet-core";
  version = "1.10.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/nodelet_core-release/archive/release/noetic/nodelet_core/1.10.1-1.tar.gz";
    name = "1.10.1-1.tar.gz";
    sha256 = "8e6b9ffcfb0abe296423f61201306683174fba537fce06e84d4a28218bec3f23";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ nodelet nodelet-topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Nodelet Core Metapackage'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
