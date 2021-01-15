
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake-modules, geometry-msgs, moveit-core, moveit-msgs, moveit-ros-planning, moveit-ros-planning-interface, open-manipulator-libs, open-manipulator-msgs, robotis-manipulator, roscpp, sensor-msgs, std-msgs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-kinetic-open-manipulator-controller";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/open_manipulator-release/archive/release/kinetic/open_manipulator_controller/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "1ac3e1f84937a1e2e8e9ee7d3506c8ebcd7625dfea1bcf3a1761abf1a9a652a9";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ boost cmake-modules geometry-msgs moveit-core moveit-msgs moveit-ros-planning moveit-ros-planning-interface open-manipulator-libs open-manipulator-msgs robotis-manipulator roscpp sensor-msgs std-msgs trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''OpenManipulator controller package'';
    license = with lib.licenses; [ asl20 ];
  };
}
