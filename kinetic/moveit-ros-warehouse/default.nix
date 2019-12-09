
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf, catkin, moveit-ros-planning, warehouse-ros, roscpp, rosconsole }:
buildRosPackage {
  pname = "ros-kinetic-moveit-ros-warehouse";
  version = "0.9.17-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/kinetic/moveit_ros_warehouse/0.9.17-1.tar.gz";
    name = "0.9.17-1.tar.gz";
    sha256 = "4a1d38a5d40c9e36a25ba8c802f69d4da95105bddfd33a90e1a0f77b88df0a7c";
  };

  buildType = "catkin";
  buildInputs = [ tf roscpp warehouse-ros moveit-ros-planning rosconsole ];
  propagatedBuildInputs = [ tf roscpp warehouse-ros moveit-ros-planning rosconsole ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Components of MoveIt! connecting to MongoDB'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
