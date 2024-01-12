
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, schunk-svh-description, schunk-svh-driver, schunk-svh-msgs }:
buildRosPackage {
  pname = "ros-noetic-schunk-svh";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/SCHUNK-GmbH-Co-KG/schunk_svh_ros_driver-release/archive/release/noetic/schunk_svh/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "4b19390b94bd79cb78e2e1ffee3ad881fd157d6a6211f41220c30e2b26bed351";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ schunk-svh-description schunk-svh-driver schunk-svh-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS1 specific packages for the Schunk SVH five finger hand'';
    license = with lib.licenses; [ "GPL-3.0-or-later" ];
  };
}
