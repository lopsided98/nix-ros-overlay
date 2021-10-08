
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, husky-gazebo }:
buildRosPackage {
  pname = "ros-noetic-husky-simulator";
  version = "0.6.0-r2";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/noetic/husky_simulator/0.6.0-2.tar.gz";
    name = "0.6.0-2.tar.gz";
    sha256 = "3620bb1fda92bf34cfa1409ff9b3bcfc4bec074970cf77287cfdb8ba39b7a5dc";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ husky-gazebo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage for Clearpath Husky simulation software'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
