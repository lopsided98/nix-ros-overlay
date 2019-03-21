
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, laser-assembler, urg-node, cmake-modules, sensor-msgs, catkin, laser-filters, robot-state-publisher, dynamic-reconfigure, tf-conversions, tf }:
buildRosPackage {
  pname = "ros-melodic-jsk-tilt-laser";
  version = "2.2.10";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_common-release/archive/release/melodic/jsk_tilt_laser/2.2.10-0.tar.gz;
    sha256 = "900a78c35d33c6dc2e243480f4ef04df27f1a1773184bd64c16b83c313adb438";
  };

  propagatedBuildInputs = [ laser-assembler urg-node laser-filters robot-state-publisher dynamic-reconfigure tf-conversions sensor-msgs tf ];
  nativeBuildInputs = [ laser-assembler laser-filters catkin cmake-modules dynamic-reconfigure tf-conversions sensor-msgs tf ];

  meta = {
    description = ''The jsk_tilt_laser package'';
    #license = lib.licenses.BSD;
  };
}
