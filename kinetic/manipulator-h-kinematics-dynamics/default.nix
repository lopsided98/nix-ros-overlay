
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, catkin, robotis-math, eigen, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-manipulator-h-kinematics-dynamics";
  version = "0.3.1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/ROBOTIS-MANIPULATOR-H-release/archive/release/kinetic/manipulator_h_kinematics_dynamics/0.3.1-0.tar.gz";
    name = "0.3.1-0.tar.gz";
    sha256 = "8fcb441d3cf47f355dcae92794a0cc8f8c500ff114c8ffcd0e96896153f16ca3";
  };

  buildType = "catkin";
  buildInputs = [ roscpp cmake-modules robotis-math eigen ];
  propagatedBuildInputs = [ roscpp cmake-modules robotis-math eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The manipulator_h_kinematics_dynamics package
    This packages provides library of kinematics and dynamics information for ROBOTIS MANIPULATOR-H.
    Additionally, there are some function to calculate kinematics and dynamics.'';
    license = with lib.licenses; [ asl20 ];
  };
}
