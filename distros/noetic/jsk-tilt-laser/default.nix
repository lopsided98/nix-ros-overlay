
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, dynamic-reconfigure, laser-assembler, laser-filters, robot-state-publisher, sensor-msgs, tf, tf-conversions, urg-node }:
buildRosPackage {
  pname = "ros-noetic-jsk-tilt-laser";
  version = "2.2.11-r2";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common-release/archive/release/noetic/jsk_tilt_laser/2.2.11-2.tar.gz";
    name = "2.2.11-2.tar.gz";
    sha256 = "32b4a5b174f2864b9b7279990b19fe86b7b5f623c00042bddef623618ffab997";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules ];
  propagatedBuildInputs = [ dynamic-reconfigure laser-assembler laser-filters robot-state-publisher sensor-msgs tf tf-conversions urg-node ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The jsk_tilt_laser package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
