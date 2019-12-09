
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-license, catkin, ecl-type-traits, ecl-errors, ecl-containers, ecl-utilities, ecl-mpl, ecl-threads, ecl-config }:
buildRosPackage {
  pname = "ros-kinetic-ecl-devices";
  version = "0.61.17";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/kinetic/ecl_devices/0.61.17-0.tar.gz";
    name = "0.61.17-0.tar.gz";
    sha256 = "cbf3f3778fe313992a4905f204a150477e4138566b04eb357c9d8e4407a898e5";
  };

  buildType = "catkin";
  buildInputs = [ ecl-license ecl-type-traits ecl-errors ecl-containers ecl-utilities ecl-mpl ecl-threads ecl-config ];
  propagatedBuildInputs = [ ecl-license ecl-type-traits ecl-errors ecl-containers ecl-utilities ecl-mpl ecl-threads ecl-config ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides an extensible and standardised framework for input-output devices.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
