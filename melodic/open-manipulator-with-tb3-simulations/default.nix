
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, open-manipulator-with-tb3-gazebo, catkin }:
buildRosPackage {
  pname = "ros-melodic-open-manipulator-with-tb3-simulations";
  version = "1.1.0-r2";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/open_manipulator_with_tb3_simulations-release/archive/release/melodic/open_manipulator_with_tb3_simulations/1.1.0-2.tar.gz;
    sha256 = "efe76d391f38587da7c22cdd2d53fe308be8fc7ef3b59e24a231b7df5ee3b2f6";
  };

  propagatedBuildInputs = [ open-manipulator-with-tb3-gazebo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Simulation packages for OpenManipulator with TurtleBot3'';
    license = with lib.licenses; [ asl20 ];
  };
}
