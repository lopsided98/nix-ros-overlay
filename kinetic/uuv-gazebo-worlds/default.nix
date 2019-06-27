
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, catkin }:
buildRosPackage {
  pname = "ros-kinetic-uuv-gazebo-worlds";
  version = "0.6.12";

  src = fetchurl {
    url = https://github.com/uuvsimulator/uuv_simulator-release/archive/release/kinetic/uuv_gazebo_worlds/0.6.12-0.tar.gz;
    sha256 = "6141500a088f87f2e13b7b060d217953bad28d67f09bb92b4496956c2b00e144";
  };

  buildInputs = [ gazebo-ros ];
  propagatedBuildInputs = [ gazebo-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The uuv_gazebo_worlds package'';
    license = with lib.licenses; [ asl20 ];
  };
}
