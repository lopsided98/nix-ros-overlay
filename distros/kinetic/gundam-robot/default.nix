
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gundam-rx78-control, gundam-rx78-description, gundam-rx78-gazebo }:
buildRosPackage {
  pname = "ros-kinetic-gundam-robot";
  version = "0.0.3-r1";

  src = fetchurl {
    url = "https://github.com/gundam-global-challenge/gundam_robot-release/archive/release/kinetic/gundam_robot/0.0.3-1.tar.gz";
    name = "0.0.3-1.tar.gz";
    sha256 = "e5441d28f483365fe1186988f60ee653fc8821b9255ddb485cf8539eb32d6a60";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gundam-rx78-control gundam-rx78-description gundam-rx78-gazebo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''gundam_robot is a meta package for GUNDAM RX-78 robot controller and simulator'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
