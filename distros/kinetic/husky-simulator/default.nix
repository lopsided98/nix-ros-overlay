
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, husky-gazebo }:
buildRosPackage {
  pname = "ros-kinetic-husky-simulator";
  version = "0.3.6-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/kinetic/husky_simulator/0.3.6-1.tar.gz";
    name = "0.3.6-1.tar.gz";
    sha256 = "496b3e21dc0b8f05537563bc2a506aeb2a2b9896c912c6ed5151304ce136716d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ husky-gazebo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage for Clearpath Husky simulation software'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
