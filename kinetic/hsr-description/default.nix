
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, joint-state-publisher, xacro, robot-state-publisher, catkin, hsr-meshes, rosbash, rviz }:
buildRosPackage {
  pname = "ros-kinetic-hsr-description";
  version = "1.1.0";

  src = fetchurl {
    url = "https://github.com/ToyotaResearchInstitute/hsr_description-release/archive/release/kinetic/hsr_description/1.1.0-0.tar.gz";
    name = "1.1.0-0.tar.gz";
    sha256 = "0404fdb0e9b922ce077ecead23b4631406e9d24d7dcf7afd48b16818f2e5e138";
  };

  buildType = "catkin";
  buildInputs = [ rosbash xacro ];
  propagatedBuildInputs = [ joint-state-publisher xacro robot-state-publisher hsr-meshes rosbash rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF files for Toyota HSR'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
