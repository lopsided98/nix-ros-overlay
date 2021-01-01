
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, dynamic-reconfigure, laser-assembler, laser-filters, robot-state-publisher, sensor-msgs, tf, tf-conversions, urg-node }:
buildRosPackage {
  pname = "ros-melodic-jsk-tilt-laser";
  version = "2.2.11-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common-release/archive/release/melodic/jsk_tilt_laser/2.2.11-1.tar.gz";
    name = "2.2.11-1.tar.gz";
    sha256 = "b0b956937cf0ed3c43f0496f99dd3633fba29b652fbbfaddeaf6b18b5749edf9";
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
