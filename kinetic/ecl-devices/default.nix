
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-utilities, catkin, ecl-threads, ecl-containers, ecl-license, ecl-errors, ecl-type-traits, ecl-config, ecl-mpl }:
buildRosPackage {
  pname = "ros-kinetic-ecl-devices";
  version = "0.61.17";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/ecl_core-release/archive/release/kinetic/ecl_devices/0.61.17-0.tar.gz;
    sha256 = "cbf3f3778fe313992a4905f204a150477e4138566b04eb357c9d8e4407a898e5";
  };

  propagatedBuildInputs = [ ecl-containers ecl-license ecl-utilities ecl-errors ecl-type-traits ecl-mpl ecl-config ecl-threads ];
  nativeBuildInputs = [ ecl-utilities catkin ecl-threads ecl-containers ecl-license ecl-errors ecl-type-traits ecl-config ecl-mpl ];

  meta = {
    description = ''Provides an extensible and standardised framework for input-output devices.'';
    #license = lib.licenses.BSD;
  };
}
