
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-ros-planning, rosconsole, catkin, roscpp, warehouse-ros, tf }:
buildRosPackage {
  pname = "ros-lunar-moveit-ros-warehouse";
  version = "0.9.12-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit-release/archive/release/lunar/moveit_ros_warehouse/0.9.12-1.tar.gz;
    sha256 = "cae60ba14f90a32681f85fa73461b2cb5f12ecf132e555ee770e1281d443b233";
  };

  buildInputs = [ moveit-ros-planning rosconsole roscpp warehouse-ros tf ];
  propagatedBuildInputs = [ moveit-ros-planning rosconsole roscpp warehouse-ros tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Components of MoveIt connecting to MongoDB'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
