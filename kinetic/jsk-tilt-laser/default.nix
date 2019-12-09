
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, dynamic-reconfigure, laser-filters, robot-state-publisher, tf, laser-assembler, cmake-modules, catkin, multisense-lib, tf-conversions, urg-node }:
buildRosPackage {
  pname = "ros-kinetic-jsk-tilt-laser";
  version = "2.2.10";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common-release/archive/release/kinetic/jsk_tilt_laser/2.2.10-0.tar.gz";
    name = "2.2.10-0.tar.gz";
    sha256 = "27881c65a5816e224c26ba9755890b45d39ecf62bdd5679081f7cdbef4ef52e4";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs dynamic-reconfigure laser-filters tf laser-assembler cmake-modules multisense-lib tf-conversions ];
  propagatedBuildInputs = [ sensor-msgs dynamic-reconfigure laser-filters robot-state-publisher tf laser-assembler multisense-lib tf-conversions urg-node ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The jsk_tilt_laser package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
