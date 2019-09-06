
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, laser-assembler, urg-node, cmake-modules, sensor-msgs, catkin, laser-filters, robot-state-publisher, dynamic-reconfigure, tf-conversions, tf }:
buildRosPackage {
  pname = "ros-melodic-jsk-tilt-laser";
  version = "2.2.10";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common-release/archive/release/melodic/jsk_tilt_laser/2.2.10-0.tar.gz";
    name = "2.2.10-0.tar.gz";
    sha256 = "900a78c35d33c6dc2e243480f4ef04df27f1a1773184bd64c16b83c313adb438";
  };

  buildType = "catkin";
  buildInputs = [ laser-assembler cmake-modules sensor-msgs laser-filters dynamic-reconfigure tf-conversions tf ];
  propagatedBuildInputs = [ laser-assembler urg-node sensor-msgs laser-filters robot-state-publisher dynamic-reconfigure tf-conversions tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The jsk_tilt_laser package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
