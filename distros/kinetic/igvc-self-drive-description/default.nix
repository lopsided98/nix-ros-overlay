
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hector-gazebo-plugins, urdf, xacro }:
buildRosPackage {
  pname = "ros-kinetic-igvc-self-drive-description";
  version = "0.1.4-r1";

  src = fetchurl {
    url = "https://github.com/robustify/igvc_self_drive_sim-release/archive/release/kinetic/igvc_self_drive_description/0.1.4-1.tar.gz";
    name = "0.1.4-1.tar.gz";
    sha256 = "19f24c726d4b6bf51f5d6a050ead118c4a87bb4e65e46b62482f8b90aab9041e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ hector-gazebo-plugins urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meshes and URDF descriptions for Gem vehicle'';
    license = with lib.licenses; [ bsd2 ];
  };
}
