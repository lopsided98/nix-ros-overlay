
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-ros-planning, cmake-modules, boost, geometry-msgs, trajectory-msgs, sensor-msgs, catkin, robotis-manipulator, open-manipulator-libs, moveit-core, std-msgs, moveit-msgs, roscpp, moveit-ros-planning-interface, open-manipulator-msgs }:
buildRosPackage {
  pname = "ros-kinetic-open-manipulator-controller";
  version = "2.0.1-r1";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/open_manipulator-release/archive/release/kinetic/open_manipulator_controller/2.0.1-1.tar.gz;
    sha256 = "1ac3e1f84937a1e2e8e9ee7d3506c8ebcd7625dfea1bcf3a1761abf1a9a652a9";
  };

  buildInputs = [ moveit-ros-planning boost cmake-modules geometry-msgs trajectory-msgs sensor-msgs robotis-manipulator open-manipulator-libs moveit-core std-msgs moveit-msgs roscpp moveit-ros-planning-interface open-manipulator-msgs ];
  propagatedBuildInputs = [ moveit-ros-planning boost cmake-modules geometry-msgs trajectory-msgs sensor-msgs robotis-manipulator open-manipulator-libs moveit-core std-msgs moveit-msgs roscpp moveit-ros-planning-interface open-manipulator-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''OpenManipulator controller package'';
    #license = lib.licenses.Apache 2.0;
  };
}
