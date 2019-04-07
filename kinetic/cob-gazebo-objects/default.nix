
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, roslaunch, catkin, cob-description }:
buildRosPackage {
  pname = "ros-kinetic-cob-gazebo-objects";
  version = "0.6.10";

  src = fetchurl {
    url = https://github.com/ipa320/cob_simulation-release/archive/release/kinetic/cob_gazebo_objects/0.6.10-0.tar.gz;
    sha256 = "3ab010e2d381494424b40aade47fde9ac0e2fb6ac54509989492ecd2d59064ff";
  };

  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ gazebo-ros roslaunch cob-description ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides some objects and furniture for gazebo simulation.'';
    #license = lib.licenses.Apache 2.0;
  };
}
