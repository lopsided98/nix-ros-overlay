
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-converters, catkin, ecl-exceptions, ecl-license, ecl-config }:
buildRosPackage {
  pname = "ros-melodic-ecl-formatters";
  version = "0.62.2";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/ecl_core-release/archive/release/melodic/ecl_formatters/0.62.2-0.tar.gz;
    sha256 = "a7f04f361b91c1ef60014240ddc7aacb2a54d37385d89b0163607bc0b536929f";
  };

  propagatedBuildInputs = [ ecl-exceptions ecl-converters ecl-license ecl-config ];
  nativeBuildInputs = [ ecl-exceptions ecl-converters ecl-license catkin ecl-config ];

  meta = {
    description = ''The formatters here simply format various input types to a specified
   text format. They can be used with most streaming types (including both
   ecl and stl streams).'';
    #license = lib.licenses.BSD;
  };
}
