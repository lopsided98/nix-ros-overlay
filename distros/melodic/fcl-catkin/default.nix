
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, libccd, octomap }:
buildRosPackage {
  pname = "ros-melodic-fcl-catkin";
  version = "0.6.1-r2";

  src = fetchurl {
    url = "https://github.com/wxmerkt/fcl_catkin-release/archive/release/melodic/fcl_catkin/0.6.1-2.tar.gz";
    name = "0.6.1-2.tar.gz";
    sha256 = "aa0d97c02a9b6ca22c02a263f2279ecefcc1570d1d79ef26fc5a1b15f6d5f5bc";
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
