
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, twist-mux, summit-x-description, catkin, summit-x-control, summit-xl-pad }:
buildRosPackage {
  pname = "ros-kinetic-summit-x-sim-bringup";
  version = "1.1.1";

  src = fetchurl {
    url = https://github.com/RobotnikAutomation/summit_x_sim-release/archive/release/kinetic/summit_x_sim_bringup/1.1.1-0.tar.gz;
    sha256 = "f681629da03203cfe7465657f2980613dabf29ebece17412aab5d91650875ab4";
  };

  propagatedBuildInputs = [ gazebo-ros twist-mux summit-x-description summit-x-control summit-xl-pad ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch files for Summit-X simulation.'';
    #license = lib.licenses.BSD;
  };
}
