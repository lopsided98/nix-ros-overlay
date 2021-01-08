
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, open-manipulator-msgs, roscpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-open-manipulator-teleop";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/open_manipulator-release/archive/release/kinetic/open_manipulator_teleop/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "e753f73f1775c8f4e955cc80cc17832b568086199980f19a4113ca4767b3a094";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ open-manipulator-msgs roscpp sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides teleoperation using keyboard for OpenManipulator.'';
    license = with lib.licenses; [ asl20 ];
  };
}
