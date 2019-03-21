
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-time-lite, ecl-io, catkin, ecl-sigslots-lite, ecl-errors, ecl-converters-lite, ecl-config }:
buildRosPackage {
  pname = "ros-kinetic-ecl-lite";
  version = "0.61.6";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/ecl_lite-release/archive/release/kinetic/ecl_lite/0.61.6-0.tar.gz;
    sha256 = "05c9749d1f74e10a810b52b0d3b209b22257a84f4a65e6d1cfede0fff412ae5c";
  };

  propagatedBuildInputs = [ ecl-sigslots-lite ecl-errors ecl-time-lite ecl-io ecl-converters-lite ecl-config ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Libraries and utilities for embedded and low-level linux development.'';
    #license = lib.licenses.BSD;
  };
}
