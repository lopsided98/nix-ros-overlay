
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros }:
buildRosPackage {
  pname = "ros-kinetic-uos-gazebo-worlds";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/uos-gbp/uos-tools/archive/release/kinetic/uos_gazebo_worlds/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "e250f2f04b094f8c624d69188f4e937cb696ec734c44bd1f02b8baca1eaedf27";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gazebo-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Gazebo world and model files for UOS.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
