
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-ros-planning, cmake-modules, boost, geometry-msgs, trajectory-msgs, sensor-msgs, catkin, robotis-manipulator, open-manipulator-libs, moveit-core, std-msgs, moveit-msgs, roscpp, moveit-ros-planning-interface, open-manipulator-msgs }:
buildRosPackage {
  pname = "ros-melodic-open-manipulator-controller";
  version = "2.0.1";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/open_manipulator-release/archive/release/melodic/open_manipulator_controller/2.0.1-0.tar.gz;
    sha256 = "b19bbeab199f991d98fc26473d59f22d1501ae8954c2e413edae34a276ba334c";
  };

  buildInputs = [ moveit-ros-planning boost cmake-modules geometry-msgs trajectory-msgs sensor-msgs robotis-manipulator open-manipulator-libs moveit-core std-msgs moveit-msgs roscpp moveit-ros-planning-interface open-manipulator-msgs ];
  propagatedBuildInputs = [ moveit-ros-planning boost cmake-modules geometry-msgs trajectory-msgs sensor-msgs robotis-manipulator open-manipulator-libs moveit-core std-msgs moveit-msgs roscpp moveit-ros-planning-interface open-manipulator-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''OpenManipulator controller package'';
    license = with lib.licenses; [ asl20 ];
  };
}
