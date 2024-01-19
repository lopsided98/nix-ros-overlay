
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, schunk-svh-description }:
buildRosPackage {
  pname = "ros-noetic-schunk-svh-simulation";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/SCHUNK-GmbH-Co-KG/schunk_svh_ros_driver-release/archive/release/noetic/schunk_svh_simulation/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "ca6c113ddf1630d988c2d573135d83bdc155161fdbc7bbc2147e68fe13ba0132";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ schunk-svh-description ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A Gazebo-based simulation environment for the Schunk SVH'';
    license = with lib.licenses; [ "GPL-3.0-or-later" ];
  };
}
