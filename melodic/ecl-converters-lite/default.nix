
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-license, catkin, ecl-config }:
buildRosPackage {
  pname = "ros-melodic-ecl-converters-lite";
  version = "0.61.6";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/ecl_lite-release/archive/release/melodic/ecl_converters_lite/0.61.6-0.tar.gz;
    sha256 = "ebd1d37b95bab3798917d592fa2fe83236f1b6a530ce43d1bf823b8730320368";
  };

  propagatedBuildInputs = [ ecl-license ecl-config ];
  nativeBuildInputs = [ ecl-license catkin ecl-config ];

  meta = {
    description = ''These are a very simple version of some of the functions in ecl_converters 
     suitable for firmware development. That is, there is no use of new, 
     templates or exceptions.'';
    #license = lib.licenses.BSD;
  };
}
