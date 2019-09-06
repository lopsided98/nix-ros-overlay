
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-ros-planning, pluginlib, tf, srdfdom, catkin, urdf, moveit-core, eigen, tf-conversions, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-moveit-kinematics";
  version = "0.9.17-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/kinetic/moveit_kinematics/0.9.17-1.tar.gz";
    name = "0.9.17-1.tar.gz";
    sha256 = "4b058191224030b597bc3e2a91b1838bf8ead80752e2e7057e9ea744592e998e";
  };

  buildType = "catkin";
  buildInputs = [ moveit-ros-planning pluginlib srdfdom roscpp urdf moveit-core eigen tf-conversions tf ];
  propagatedBuildInputs = [ moveit-ros-planning moveit-core pluginlib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package for all inverse kinematics solvers in MoveIt!'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
