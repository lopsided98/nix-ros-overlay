
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, manipulator-h-description, manipulator-h-base-module, manipulator-h-kinematics-dynamics, manipulator-h-gui, catkin, manipulator-h-bringup, manipulator-h-base-module-msgs, manipulator-h-gazebo, manipulator-h-manager }:
buildRosPackage {
  pname = "ros-kinetic-manipulator-h";
  version = "0.3.1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/ROBOTIS-MANIPULATOR-H-release/archive/release/kinetic/manipulator_h/0.3.1-0.tar.gz";
    name = "0.3.1-0.tar.gz";
    sha256 = "8402eb7f6dffc1f3833589acc3407f36b55480270e777a50a86de416f812c363";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ manipulator-h-description manipulator-h-base-module manipulator-h-kinematics-dynamics manipulator-h-gui manipulator-h-bringup manipulator-h-base-module-msgs manipulator-h-gazebo manipulator-h-manager ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS packages for the ROBOTIS MANIPULATOR-H (metapackage)'';
    license = with lib.licenses; [ asl20 ];
  };
}
