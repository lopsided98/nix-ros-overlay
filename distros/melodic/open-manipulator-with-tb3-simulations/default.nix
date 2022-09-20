
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, open-manipulator-with-tb3-gazebo }:
buildRosPackage {
  pname = "ros-melodic-open-manipulator-with-tb3-simulations";
  version = "1.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/open_manipulator_with_tb3_simulations-release/archive/release/melodic/open_manipulator_with_tb3_simulations/1.1.0-2.tar.gz";
    name = "1.1.0-2.tar.gz";
    sha256 = "efe76d391f38587da7c22cdd2d53fe308be8fc7ef3b59e24a231b7df5ee3b2f6";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ open-manipulator-with-tb3-gazebo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Simulation packages for OpenManipulator with TurtleBot3'';
    license = with lib.licenses; [ asl20 ];
  };
}
