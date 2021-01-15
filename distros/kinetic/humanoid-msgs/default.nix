
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-humanoid-msgs";
  version = "0.3.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/humanoid_msgs-release/archive/release/kinetic/humanoid_msgs/0.3.0-0.tar.gz";
    name = "0.3.0-0.tar.gz";
    sha256 = "2c3e9b61c10aef451b3a82b45d659d95acfe526c3456be2849716a7c5ff151a3";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages and services for humanoid robots'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
