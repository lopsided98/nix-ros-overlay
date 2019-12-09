
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-core, robotis-manipulator, boost, geometry-msgs, trajectory-msgs, sensor-msgs, std-msgs, moveit-ros-planning-interface, cmake-modules, catkin, moveit-ros-planning, open-manipulator-msgs, moveit-msgs, roscpp, open-manipulator-libs }:
buildRosPackage {
  pname = "ros-kinetic-open-manipulator-controller";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/open_manipulator-release/archive/release/kinetic/open_manipulator_controller/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "1ac3e1f84937a1e2e8e9ee7d3506c8ebcd7625dfea1bcf3a1761abf1a9a652a9";
  };

  buildType = "catkin";
  buildInputs = [ trajectory-msgs boost robotis-manipulator geometry-msgs moveit-core sensor-msgs std-msgs moveit-ros-planning-interface cmake-modules moveit-ros-planning open-manipulator-msgs moveit-msgs roscpp open-manipulator-libs ];
  propagatedBuildInputs = [ robotis-manipulator sensor-msgs boost geometry-msgs moveit-core trajectory-msgs std-msgs moveit-ros-planning-interface cmake-modules moveit-ros-planning open-manipulator-msgs moveit-msgs roscpp open-manipulator-libs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''OpenManipulator controller package'';
    license = with lib.licenses; [ asl20 ];
  };
}
