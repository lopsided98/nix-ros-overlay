
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gundam-rx78-control, gundam-rx78-description, gundam-rx78-gazebo }:
buildRosPackage {
  pname = "ros-melodic-gundam-robot";
  version = "0.0.3-r1";

  src = fetchurl {
    url = "https://github.com/gundam-global-challenge/gundam_robot-release/archive/release/melodic/gundam_robot/0.0.3-1.tar.gz";
    name = "0.0.3-1.tar.gz";
    sha256 = "104242639f58d31d81f2635f9a84db3e777dd60c82912fb774aff076719d8db9";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ gundam-rx78-control gundam-rx78-description gundam-rx78-gazebo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''gundam_robot is a meta package for GUNDAM RX-78 robot controller and simulator'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
