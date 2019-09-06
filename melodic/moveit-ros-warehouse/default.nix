
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-ros-planning, rosconsole, catkin, tf2-ros, tf2-eigen, warehouse-ros, roscpp }:
buildRosPackage {
  pname = "ros-melodic-moveit-ros-warehouse";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_ros_warehouse/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "6170d8dc44945f1f314818a9bf4e14420f5966b38be89893ab9e91cddda3877e";
  };

  buildType = "catkin";
  buildInputs = [ moveit-ros-planning rosconsole tf2-ros tf2-eigen warehouse-ros roscpp ];
  propagatedBuildInputs = [ moveit-ros-planning rosconsole tf2-ros tf2-eigen warehouse-ros roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Components of MoveIt! connecting to MongoDB'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
