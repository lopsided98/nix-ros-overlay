
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, catkin }:
buildRosPackage {
  pname = "ros-kinetic-uuv-gazebo-worlds";
  version = "0.6.13";

  src = fetchurl {
    url = https://github.com/uuvsimulator/uuv_simulator-release/archive/release/kinetic/uuv_gazebo_worlds/0.6.13-0.tar.gz;
    sha256 = "4b76fd0b324a9b41c229878a8431d90f52dd034c16fd9cdb6c48d67635af4115";
  };

  buildInputs = [ gazebo-ros ];
  propagatedBuildInputs = [ gazebo-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The uuv_gazebo_worlds package'';
    license = with lib.licenses; [ asl20 ];
  };
}
