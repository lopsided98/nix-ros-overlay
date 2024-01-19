
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, eigen, message-generation, message-runtime, roscpp, roslib }:
buildRosPackage {
  pname = "ros-noetic-parameter-pa";
  version = "1.2.3-r2";

  src = fetchurl {
    url = "https://github.com/TUC-ProAut/ros_parameter-release/archive/release/noetic/parameter_pa/1.2.3-2.tar.gz";
    name = "1.2.3-2.tar.gz";
    sha256 = "f1a8023e6acd9cb328bb3a75167ea023470f21eac302b5f58ab966b9b01065ce";
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
