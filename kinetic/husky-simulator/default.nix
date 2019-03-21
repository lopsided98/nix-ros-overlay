
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, husky-gazebo, catkin }:
buildRosPackage {
  pname = "ros-kinetic-husky-simulator";
  version = "0.3.2";

  src = fetchurl {
    url = https://github.com/clearpath-gbp/husky-release/archive/release/kinetic/husky_simulator/0.3.2-0.tar.gz;
    sha256 = "78a1bae715191150c98ac70d7451744189900ec32f558eeecdc425366d9e9fa5";
  };

  propagatedBuildInputs = [ husky-gazebo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage for Clearpath Husky simulation software'';
    #license = lib.licenses.BSD;
  };
}
