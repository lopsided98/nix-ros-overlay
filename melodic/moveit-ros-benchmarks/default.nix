
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-ros-planning, pluginlib, catkin, moveit-ros-warehouse, tf2-eigen, roscpp }:
buildRosPackage {
  pname = "ros-melodic-moveit-ros-benchmarks";
  version = "1.0.2-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_ros_benchmarks/1.0.2-1.tar.gz;
    sha256 = "4d739a977e815a45a45542b52f31244a1755d4e4df62d68399d5bada565e3fed";
  };

  buildInputs = [ moveit-ros-planning pluginlib moveit-ros-warehouse tf2-eigen roscpp ];
  propagatedBuildInputs = [ moveit-ros-planning pluginlib moveit-ros-warehouse tf2-eigen roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Enhanced tools for benchmarks in MoveIt!'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
