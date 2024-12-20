
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, dynamic-reconfigure, laser-assembler, laser-filters, robot-state-publisher, sensor-msgs, tf, tf-conversions, urg-node }:
buildRosPackage {
  pname = "ros-noetic-jsk-tilt-laser";
  version = "2.2.14-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common-release/archive/release/noetic/jsk_tilt_laser/2.2.14-1.tar.gz";
    name = "2.2.14-1.tar.gz";
    sha256 = "79e6a75e68401586ff35f1a25ec353560e2e131eecbf378b9bf828c482ca1e10";
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
