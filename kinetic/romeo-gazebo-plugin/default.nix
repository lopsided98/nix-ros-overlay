
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, romeo-description, ros-control, romeo-control, gazebo-ros-control, ros-controllers, gazebo-ros, gazebo-plugins }:
buildRosPackage {
  pname = "ros-kinetic-romeo-gazebo-plugin";
  version = "0.2.3";

  src = fetchurl {
    url = "https://github.com/ros-aldebaran/romeo_virtual-release/archive/release/kinetic/romeo_gazebo_plugin/0.2.3-0.tar.gz";
    name = "0.2.3-0.tar.gz";
    sha256 = "d1c743e2165fe557a11673a131c29a03f41bf2716853579f6f12189c04dd6904";
  };

  buildType = "catkin";
  buildInputs = [ gazebo-ros romeo-description ];
  propagatedBuildInputs = [ romeo-description ros-control romeo-control gazebo-ros-control ros-controllers gazebo-ros gazebo-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The romeo_gazebo_plugin package'';
    license = with lib.licenses; [ asl20 ];
  };
}
