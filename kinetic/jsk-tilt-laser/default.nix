
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, laser-assembler, urg-node, cmake-modules, sensor-msgs, catkin, laser-filters, multisense-lib, robot-state-publisher, tf-conversions, dynamic-reconfigure, tf }:
buildRosPackage {
  pname = "ros-kinetic-jsk-tilt-laser";
  version = "2.2.10";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_common-release/archive/release/kinetic/jsk_tilt_laser/2.2.10-0.tar.gz;
    sha256 = "27881c65a5816e224c26ba9755890b45d39ecf62bdd5679081f7cdbef4ef52e4";
  };

  propagatedBuildInputs = [ laser-assembler urg-node sensor-msgs laser-filters multisense-lib robot-state-publisher tf-conversions dynamic-reconfigure tf ];
  nativeBuildInputs = [ laser-assembler cmake-modules sensor-msgs catkin laser-filters multisense-lib dynamic-reconfigure tf-conversions tf ];

  meta = {
    description = ''The jsk_tilt_laser package'';
    #license = lib.licenses.BSD;
  };
}
