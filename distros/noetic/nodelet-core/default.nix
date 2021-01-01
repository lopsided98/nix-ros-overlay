
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nodelet, nodelet-topic-tools }:
buildRosPackage {
  pname = "ros-noetic-nodelet-core";
  version = "1.10.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/nodelet_core-release/archive/release/noetic/nodelet_core/1.10.0-1.tar.gz";
    name = "1.10.0-1.tar.gz";
    sha256 = "ea941ba1a04a52d01c3754aed9114f961678a5052e8e12b94a9515545eda7862";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ nodelet nodelet-topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Nodelet Core Metapackage'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
