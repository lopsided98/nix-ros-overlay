
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hsr-meshes, joint-state-publisher, robot-state-publisher, rosbash, rviz, xacro }:
buildRosPackage {
  pname = "ros-kinetic-hsr-description";
  version = "1.1.0";

  src = fetchurl {
    url = "https://github.com/ToyotaResearchInstitute/hsr_description-release/archive/release/kinetic/hsr_description/1.1.0-0.tar.gz";
    name = "1.1.0-0.tar.gz";
    sha256 = "0404fdb0e9b922ce077ecead23b4631406e9d24d7dcf7afd48b16818f2e5e138";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ hsr-meshes joint-state-publisher robot-state-publisher rosbash rviz xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF files for Toyota HSR'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
