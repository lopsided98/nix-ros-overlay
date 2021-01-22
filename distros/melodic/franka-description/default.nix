
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, xacro }:
buildRosPackage {
  pname = "ros-melodic-franka-description";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/frankaemika/franka_ros-release/archive/release/melodic/franka_description/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "900aafe7e265eded57bf5912dea22a166ff95047fa108a92e7d8d599dfd43d0e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''franka_description contains URDF files and meshes of Franka Emika robots'';
    license = with lib.licenses; [ asl20 ];
  };
}
