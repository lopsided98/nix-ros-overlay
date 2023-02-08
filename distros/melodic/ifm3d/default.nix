
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, ifm3d-core, image-transport, message-generation, nodelet, pcl-ros, roscpp, rospy, rostest, sensor-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-ifm3d";
  version = "0.6.2-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ifm";
        repo = "ifm3d-ros-release";
        rev = "release/melodic/ifm3d/0.6.2-2";
        sha256 = "sha256-hCfT4PKk3DEEntLQeolnlvCKzWLY68gfE/TaSz64R7M=";
      };

  buildType = "catkin";
  buildInputs = [ catkin rostest ];
  propagatedBuildInputs = [ cv-bridge ifm3d-core image-transport message-generation nodelet pcl-ros roscpp rospy sensor-msgs std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ifm pmd-based 3D ToF Camera ROS package'';
    license = with lib.licenses; [ asl20 ];
  };
}
