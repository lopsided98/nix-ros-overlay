
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, husky-base, husky-bringup }:
buildRosPackage {
  pname = "ros-kinetic-husky-robot";
  version = "0.3.6-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/kinetic/husky_robot/0.3.6-1.tar.gz";
    name = "0.3.6-1.tar.gz";
    sha256 = "bd50c77fe1eb71020a6ce9ebdede158e6f81e33028647e4ec636d7dbc8309cc5";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ husky-base husky-bringup ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage for Clearpath Husky robot software'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
