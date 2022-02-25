
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, husky-gazebo }:
buildRosPackage {
  pname = "ros-noetic-husky-simulator";
  version = "0.6.2-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/noetic/husky_simulator/0.6.2-1.tar.gz";
    name = "0.6.2-1.tar.gz";
    sha256 = "89a6fb7ec65c7c1ffeabb82086155027cd96f326c1c72caac0261133f8ae4a64";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ husky-gazebo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage for Clearpath Husky simulation software'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
