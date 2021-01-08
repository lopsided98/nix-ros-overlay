
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, manipulator-h-base-module, manipulator-h-base-module-msgs, manipulator-h-bringup, manipulator-h-description, manipulator-h-gazebo, manipulator-h-gui, manipulator-h-kinematics-dynamics, manipulator-h-manager }:
buildRosPackage {
  pname = "ros-kinetic-manipulator-h";
  version = "0.3.1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/ROBOTIS-MANIPULATOR-H-release/archive/release/kinetic/manipulator_h/0.3.1-0.tar.gz";
    name = "0.3.1-0.tar.gz";
    sha256 = "8402eb7f6dffc1f3833589acc3407f36b55480270e777a50a86de416f812c363";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ manipulator-h-base-module manipulator-h-base-module-msgs manipulator-h-bringup manipulator-h-description manipulator-h-gazebo manipulator-h-gui manipulator-h-kinematics-dynamics manipulator-h-manager ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS packages for the ROBOTIS MANIPULATOR-H (metapackage)'';
    license = with lib.licenses; [ asl20 ];
  };
}
