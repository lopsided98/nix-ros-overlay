
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, roslaunch, catkin, cob-default-env-config, cob-supported-robots, cob-gazebo-worlds, cob-default-robot-config, cob-gazebo }:
buildRosPackage {
  pname = "ros-kinetic-cob-bringup-sim";
  version = "0.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_simulation-release/archive/release/kinetic/cob_bringup_sim/0.7.3-1.tar.gz";
    name = "0.7.3-1.tar.gz";
    sha256 = "5036426f0915288083d9d6269296dc111d470d52436fd03bb16009d569dc8747";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  checkInputs = [ cob-supported-robots cob-default-env-config ];
  propagatedBuildInputs = [ gazebo-ros cob-default-env-config cob-gazebo-worlds roslaunch cob-default-robot-config cob-gazebo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides launch files for starting a simulated Care-O-bot.'';
    license = with lib.licenses; [ asl20 ];
  };
}
