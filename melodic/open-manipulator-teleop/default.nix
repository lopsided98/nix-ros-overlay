
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, std-msgs, roscpp, open-manipulator-msgs }:
buildRosPackage {
  pname = "ros-melodic-open-manipulator-teleop";
  version = "2.0.1";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/open_manipulator-release/archive/release/melodic/open_manipulator_teleop/2.0.1-0.tar.gz;
    sha256 = "4ee30aac61a7e2b66ced2141c722c2c7de04cbc061d985b49387f7a205e6eac1";
  };

  buildInputs = [ std-msgs sensor-msgs roscpp open-manipulator-msgs ];
  propagatedBuildInputs = [ std-msgs sensor-msgs roscpp open-manipulator-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides teleoperation using keyboard for OpenManipulator.'';
    #license = lib.licenses.Apache 2.0;
  };
}
