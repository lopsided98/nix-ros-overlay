
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, std-msgs, robotis-controller-msgs, thormang3-manipulation-module-msgs }:
buildRosPackage {
  pname = "ros-kinetic-thormang3-manipulation-demo";
  version = "0.2.0";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/ROBOTIS-THORMANG-PPC-release/archive/release/kinetic/thormang3_manipulation_demo/0.2.0-0.tar.gz;
    sha256 = "6c69bbabb85ef59a6b8b6325b6465d836298f89806200ec229a37ae59ad29dc1";
  };

  propagatedBuildInputs = [ std-msgs roscpp thormang3-manipulation-module-msgs robotis-controller-msgs ];
  nativeBuildInputs = [ robotis-controller-msgs std-msgs catkin roscpp thormang3-manipulation-module-msgs ];

  meta = {
    description = ''The thormang3_manipulation_demo package'';
    #license = lib.licenses.Apache 2.0;
  };
}
