
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, robotis-framework-common, roscpp, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-motion-module-tutorial";
  version = "0.2.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/ROBOTIS-THORMANG-MPC-release/archive/release/kinetic/motion_module_tutorial/0.2.0-0.tar.gz";
    name = "0.2.0-0.tar.gz";
    sha256 = "ad777f0222357f71362b428e92d3c99cb10dae1176d0f6c8ba6f8fccf90a9198";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ boost robotis-framework-common roscpp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The motion_module_tutorial package'';
    license = with lib.licenses; [ asl20 ];
  };
}
