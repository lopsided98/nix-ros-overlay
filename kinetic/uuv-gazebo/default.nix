
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-uuv-gazebo";
  version = "0.6.10";

  src = fetchurl {
    url = https://github.com/uuvsimulator/uuv_simulator-release/archive/release/kinetic/uuv_gazebo/0.6.10-0.tar.gz;
    sha256 = "1a80542c3d3039de4e0b51fce288aec7471ec409b24c0060e950f2e2ff102fb5";
  };

  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The uuv_gazebo package'';
    license = with lib.licenses; [ asl20 ];
  };
}
