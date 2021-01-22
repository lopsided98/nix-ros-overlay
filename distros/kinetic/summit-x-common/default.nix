
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, summit-x-description }:
buildRosPackage {
  pname = "ros-kinetic-summit-x-common";
  version = "0.1.0";

  src = fetchurl {
    url = "https://github.com/RobotnikAutomation/summit_x_common-release/archive/release/kinetic/summit_x_common/0.1.0-0.tar.gz";
    name = "0.1.0-0.tar.gz";
    sha256 = "259a74cf499c88a43459a3ae1e1a60f91311989c50bd43d8ba1a571356d08ac8";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ summit-x-description ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The summit_x_common package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
