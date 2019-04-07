
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, romeo-control, ros-control, catkin, gazebo-plugins, romeo-description, gazebo-ros-control, ros-controllers }:
buildRosPackage {
  pname = "ros-kinetic-romeo-gazebo-plugin";
  version = "0.2.3";

  src = fetchurl {
    url = https://github.com/ros-aldebaran/romeo_virtual-release/archive/release/kinetic/romeo_gazebo_plugin/0.2.3-0.tar.gz;
    sha256 = "d1c743e2165fe557a11673a131c29a03f41bf2716853579f6f12189c04dd6904";
  };

  buildInputs = [ gazebo-ros romeo-description ];
  propagatedBuildInputs = [ gazebo-ros gazebo-plugins ros-controllers romeo-control ros-control gazebo-ros-control romeo-description ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The romeo_gazebo_plugin package'';
    #license = lib.licenses.Apache 2.0;
  };
}
