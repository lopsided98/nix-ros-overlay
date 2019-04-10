
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-time-lite, ecl-io, catkin, ecl-sigslots-lite, ecl-errors, ecl-converters-lite, ecl-config }:
buildRosPackage {
  pname = "ros-lunar-ecl-lite";
  version = "0.61.6";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/ecl_lite-release/archive/release/lunar/ecl_lite/0.61.6-0.tar.gz;
    sha256 = "3837e30579ef921ce78c3dd69399fc177f78ca9d22551ba43ec6cadc87606ec9";
  };

  propagatedBuildInputs = [ ecl-sigslots-lite ecl-errors ecl-time-lite ecl-io ecl-converters-lite ecl-config ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Libraries and utilities for embedded and low-level linux development.'';
    #license = lib.licenses.BSD;
  };
}
