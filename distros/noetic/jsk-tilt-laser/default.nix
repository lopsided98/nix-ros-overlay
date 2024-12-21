
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, dynamic-reconfigure, laser-assembler, laser-filters, robot-state-publisher, sensor-msgs, tf, tf-conversions, urg-node }:
buildRosPackage {
  pname = "ros-noetic-jsk-tilt-laser";
  version = "2.2.15-r4";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common-release/archive/release/noetic/jsk_tilt_laser/2.2.15-4.tar.gz";
    name = "2.2.15-4.tar.gz";
    sha256 = "545c0bf54659634ef0aff90b10132b815130c429f890fe28bc046ab2eea5ee06";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules ];
  propagatedBuildInputs = [ dynamic-reconfigure laser-assembler laser-filters robot-state-publisher sensor-msgs tf tf-conversions urg-node ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "The jsk_tilt_laser package";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
