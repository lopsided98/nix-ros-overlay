
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake-modules, geometry-msgs, moveit-core, moveit-msgs, moveit-ros-planning, moveit-ros-planning-interface, open-manipulator-libs, open-manipulator-msgs, robotis-manipulator, roscpp, sensor-msgs, std-msgs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-melodic-open-manipulator-controller";
  version = "2.0.1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/open_manipulator-release/archive/release/melodic/open_manipulator_controller/2.0.1-0.tar.gz";
    name = "2.0.1-0.tar.gz";
    sha256 = "b19bbeab199f991d98fc26473d59f22d1501ae8954c2e413edae34a276ba334c";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ boost cmake-modules geometry-msgs moveit-core moveit-msgs moveit-ros-planning moveit-ros-planning-interface open-manipulator-libs open-manipulator-msgs robotis-manipulator roscpp sensor-msgs std-msgs trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''OpenManipulator controller package'';
    license = with lib.licenses; [ asl20 ];
  };
}
