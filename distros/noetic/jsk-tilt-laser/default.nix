
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, dynamic-reconfigure, laser-assembler, laser-filters, robot-state-publisher, sensor-msgs, tf, tf-conversions, urg-node }:
buildRosPackage {
  pname = "ros-noetic-jsk-tilt-laser";
  version = "2.2.12-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common-release/archive/release/noetic/jsk_tilt_laser/2.2.12-1.tar.gz";
    name = "2.2.12-1.tar.gz";
    sha256 = "a7f28528f48b54cabeaa344687640f515aa524f5f1c8c9e213137193848797a1";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules ];
  propagatedBuildInputs = [ dynamic-reconfigure laser-assembler laser-filters robot-state-publisher sensor-msgs tf tf-conversions urg-node ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The jsk_tilt_laser package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
