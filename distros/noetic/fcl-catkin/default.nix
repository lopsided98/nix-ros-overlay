
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, libccd, octomap }:
buildRosPackage {
  pname = "ros-noetic-fcl-catkin";
  version = "0.6.1-r1";

  src = fetchurl {
    url = "https://github.com/wxmerkt/fcl_catkin-release/archive/release/noetic/fcl_catkin/0.6.1-1.tar.gz";
    name = "0.6.1-1.tar.gz";
    sha256 = "7c598aae4e97df1ac798a8966162a5a3dadf27e307ea4883d9c01ac0a15a4929";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ eigen libccd octomap ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''fcl_catkin'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
