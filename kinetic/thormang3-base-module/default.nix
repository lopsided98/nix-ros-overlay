
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, robotis-controller-msgs, boost, geometry-msgs, std-msgs, cmake-modules, roslib, catkin, libyamlcpp, eigen, robotis-framework-common, roscpp, robotis-math, thormang3-kinematics-dynamics }:
buildRosPackage {
  pname = "ros-kinetic-thormang3-base-module";
  version = "0.2.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/ROBOTIS-THORMANG-MPC-release/archive/release/kinetic/thormang3_base_module/0.2.0-0.tar.gz";
    name = "0.2.0-0.tar.gz";
    sha256 = "7ca3a2bd8b1caf1a2486ee0646596fe57a8be5877cf11a8128d432c9e07af15b";
  };

  buildType = "catkin";
  buildInputs = [ robotis-controller-msgs boost geometry-msgs std-msgs cmake-modules roslib libyamlcpp eigen robotis-framework-common roscpp robotis-math thormang3-kinematics-dynamics ];
  propagatedBuildInputs = [ robotis-controller-msgs boost geometry-msgs std-msgs cmake-modules roslib libyamlcpp eigen robotis-framework-common roscpp robotis-math thormang3-kinematics-dynamics ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The thormang3_base_module package'';
    license = with lib.licenses; [ asl20 ];
  };
}
