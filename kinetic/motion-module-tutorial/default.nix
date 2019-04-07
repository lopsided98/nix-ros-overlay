
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, std-msgs, roscpp, robotis-framework-common }:
buildRosPackage {
  pname = "ros-kinetic-motion-module-tutorial";
  version = "0.2.0";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/ROBOTIS-THORMANG-MPC-release/archive/release/kinetic/motion_module_tutorial/0.2.0-0.tar.gz;
    sha256 = "ad777f0222357f71362b428e92d3c99cb10dae1176d0f6c8ba6f8fccf90a9198";
  };

  buildInputs = [ std-msgs roscpp boost robotis-framework-common ];
  propagatedBuildInputs = [ std-msgs roscpp boost robotis-framework-common ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The motion_module_tutorial package'';
    #license = lib.licenses.Apache 2.0;
  };
}
