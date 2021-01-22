
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-rbcar-sim-bringup";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/RobotnikAutomation/rbcar_sim-release/archive/release/kinetic/rbcar_sim_bringup/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "1b87e915b2f12b70b79deb55e7d3e00c902c07e09ed1c457b241ee2d149a194c";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rbcar_sim_bringup package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
