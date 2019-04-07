
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-ros-planning, rosconsole, catkin, tf2-ros, tf2-eigen, warehouse-ros, roscpp }:
buildRosPackage {
  pname = "ros-melodic-moveit-ros-warehouse";
  version = "1.0.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_ros_warehouse/1.0.1-0.tar.gz;
    sha256 = "f2200ad880c214ba2af00fb36d58740509ca51efc0e6213b2fc4615005230baf";
  };

  buildInputs = [ moveit-ros-planning rosconsole tf2-eigen warehouse-ros roscpp tf2-ros ];
  propagatedBuildInputs = [ moveit-ros-planning rosconsole tf2-eigen warehouse-ros roscpp tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Components of MoveIt! connecting to MongoDB'';
    #license = lib.licenses.BSD;
  };
}
