
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nodelet, nodelet-topic-tools }:
buildRosPackage {
  pname = "ros-lunar-nodelet-core";
  version = "1.9.14";

  src = fetchurl {
    url = https://github.com/ros-gbp/nodelet_core-release/archive/release/lunar/nodelet_core/1.9.14-0.tar.gz;
    sha256 = "e3f77a7244142c6dd61e9f62b4716cd7bebf8be665c0586482b7fc4a43426779";
  };

  propagatedBuildInputs = [ nodelet nodelet-topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Nodelet Core Metapackage'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
