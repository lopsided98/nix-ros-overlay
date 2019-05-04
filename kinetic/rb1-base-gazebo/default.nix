
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, std-srvs, rb1-base-pad, catkin, rb1-base-control, std-msgs, tf, rb1-base-description, gazebo-ros-control }:
buildRosPackage {
  pname = "ros-kinetic-rb1-base-gazebo";
  version = "1.0.2";

  src = fetchurl {
    url = https://github.com/RobotnikAutomation/rb1_base_sim-release/archive/release/kinetic/rb1_base_gazebo/1.0.2-0.tar.gz;
    sha256 = "f2874fcfc9c10fc5ad8d458b5c62a0211c47e0ffdd18660c4af63e4e54784d3c";
  };

  propagatedBuildInputs = [ gazebo-ros std-srvs rb1-base-pad rb1-base-control std-msgs tf rb1-base-description gazebo-ros-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rb1_base_gazebo package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
