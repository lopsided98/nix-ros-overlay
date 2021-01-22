
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roch-gazebo }:
buildRosPackage {
  pname = "ros-kinetic-roch-simulator";
  version = "2.0.12-r5";

  src = fetchurl {
    url = "https://github.com/SawYerRobotics-release/roch_simulator-release/archive/release/kinetic/roch_simulator/2.0.12-5.tar.gz";
    name = "2.0.12-5.tar.gz";
    sha256 = "fb827824bb5e30b1479ebe49c8fd7087f1cceaee93276cb5bf10bbb3d4f0adaa";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ roch-gazebo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage for SawYer roch simulation software'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
