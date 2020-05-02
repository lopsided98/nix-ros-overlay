
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moveit-ros-planning, rosconsole, roscpp, tf2-eigen, tf2-ros, warehouse-ros }:
buildRosPackage {
  pname = "ros-melodic-moveit-ros-warehouse";
  version = "1.0.3-r2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_ros_warehouse/1.0.3-2.tar.gz";
    name = "1.0.3-2.tar.gz";
    sha256 = "4ade914f0a1261e8b0326bd6ff96b89acad5a1b774887661b41311bea8a67765";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ moveit-ros-planning rosconsole roscpp tf2-eigen tf2-ros warehouse-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Components of MoveIt! connecting to MongoDB'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
