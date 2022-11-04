
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospy }:
buildRosPackage {
  pname = "ros-melodic-rotors-evaluation";
  version = "2.2.3";

  src = fetchurl {
    url = "https://github.com/ethz-asl/rotors_simulator-release/archive/release/melodic/rotors_evaluation/2.2.3-0.tar.gz";
    name = "2.2.3-0.tar.gz";
    sha256 = "01b472150f0c2e6250cfb8db3a04a66d23c16c987d3f95900be335c64b9886e7";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The dataset evaluation package for the RotorS simulator.'';
    license = with lib.licenses; [ "ASL-2.0" ];
  };
}
