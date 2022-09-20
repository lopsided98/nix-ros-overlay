
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, eigen, message-generation, message-runtime, roscpp, roslib }:
buildRosPackage {
  pname = "ros-melodic-parameter-pa";
  version = "1.2.3-r2";

  src = fetchurl {
    url = "https://github.com/TUC-ProAut/ros_parameter-release/archive/release/melodic/parameter_pa/1.2.3-2.tar.gz";
    name = "1.2.3-2.tar.gz";
    sha256 = "ecf0983ae4dfc9bcb99e83c332bda449ffa5ee778c8e17e9a1b2c667d0544aa9";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ cmake-modules eigen message-runtime roscpp roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ProAut parameter package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
