
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-converters, catkin, ecl-exceptions, ecl-license, ecl-config }:
buildRosPackage {
  pname = "ros-kinetic-ecl-formatters";
  version = "0.61.17";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/ecl_core-release/archive/release/kinetic/ecl_formatters/0.61.17-0.tar.gz;
    sha256 = "29d6da0496fbd6809697380b716d60bf117316da43e883dd74f7b54ce8be926b";
  };

  buildInputs = [ ecl-exceptions ecl-converters ecl-license ecl-config ];
  propagatedBuildInputs = [ ecl-exceptions ecl-converters ecl-license ecl-config ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The formatters here simply format various input types to a specified
   text format. They can be used with most streaming types (including both
   ecl and stl streams).'';
    #license = lib.licenses.BSD;
  };
}
