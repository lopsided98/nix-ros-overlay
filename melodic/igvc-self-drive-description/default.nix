
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, hector-gazebo-plugins, catkin, urdf, xacro }:
buildRosPackage {
  pname = "ros-melodic-igvc-self-drive-description";
  version = "0.1.4-r1";

  src = fetchurl {
    url = https://github.com/robustify/igvc_self_drive_sim-release/archive/release/melodic/igvc_self_drive_description/0.1.4-1.tar.gz;
    sha256 = "fa2ffa41025c6113ccd2b1ae750a29c23e8b50b5f2a52f3dad64a764afbd90f3";
  };

  propagatedBuildInputs = [ hector-gazebo-plugins urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meshes and URDF descriptions for Gem vehicle'';
    license = with lib.licenses; [ bsd2 ];
  };
}
