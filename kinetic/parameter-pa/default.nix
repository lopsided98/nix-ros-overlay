
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, catkin, roscpp, message-generation, message-runtime, eigen, roslib }:
buildRosPackage {
  pname = "ros-kinetic-parameter-pa";
  version = "1.2.1";

  src = fetchurl {
    url = "https://github.com/tuc-proaut/ros_parameter-release/archive/release/kinetic/parameter_pa/1.2.1-0.tar.gz";
    name = "1.2.1-0.tar.gz";
    sha256 = "162edff86d570c52e71d78b56a3c076bc91556bd4fba5613f4714f0a65ecaf84";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules roscpp message-generation eigen roslib ];
  propagatedBuildInputs = [ cmake-modules roslib message-runtime eigen roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ProAut parameter package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
