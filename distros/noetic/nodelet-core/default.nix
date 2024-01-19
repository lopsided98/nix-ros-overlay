
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nodelet, nodelet-topic-tools }:
buildRosPackage {
  pname = "ros-noetic-nodelet-core";
  version = "1.11.0-r2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/nodelet_core-release/archive/release/noetic/nodelet_core/1.11.0-2.tar.gz";
    name = "1.11.0-2.tar.gz";
    sha256 = "2725e477c4ff5c59f779b3733ab098542102871877ad247eb8c8d487799155f3";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ nodelet nodelet-topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Nodelet Core Metapackage'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
