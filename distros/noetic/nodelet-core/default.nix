
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nodelet, nodelet-topic-tools }:
buildRosPackage {
  pname = "ros-noetic-nodelet-core";
  version = "1.11.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/nodelet_core-release/archive/release/noetic/nodelet_core/1.11.2-1.tar.gz";
    name = "1.11.2-1.tar.gz";
    sha256 = "08ff5e3cdc8c8ecdc6c9fc9f84d5aa644b326b0797b87e68317a175429c9054a";
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
