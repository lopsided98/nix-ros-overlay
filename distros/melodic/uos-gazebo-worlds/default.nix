
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros }:
buildRosPackage {
  pname = "ros-melodic-uos-gazebo-worlds";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/uos-tools/archive/release/melodic/uos_gazebo_worlds/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "0f1469768073221cf8a8e529515771c3190b98a165f7520affb304d332321c39";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gazebo-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Gazebo world and model files for UOS.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
