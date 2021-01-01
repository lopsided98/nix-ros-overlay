
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros, summit-x-control, summit-x-description, summit-xl-pad, twist-mux }:
buildRosPackage {
  pname = "ros-kinetic-summit-x-sim-bringup";
  version = "1.1.1";

  src = fetchurl {
    url = "https://github.com/RobotnikAutomation/summit_x_sim-release/archive/release/kinetic/summit_x_sim_bringup/1.1.1-0.tar.gz";
    name = "1.1.1-0.tar.gz";
    sha256 = "f681629da03203cfe7465657f2980613dabf29ebece17412aab5d91650875ab4";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gazebo-ros summit-x-control summit-x-description summit-xl-pad twist-mux ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch files for Summit-X simulation.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
