
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-license, catkin, ecl-errors, ecl-config }:
buildRosPackage {
  pname = "ros-melodic-ecl-exceptions";
  version = "0.62.2";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/ecl_core-release/archive/release/melodic/ecl_exceptions/0.62.2-0.tar.gz;
    sha256 = "41ebe177df444d6184cf296500c419bdac0173c0296d37dfd55110da85216017";
  };

  propagatedBuildInputs = [ ecl-license ecl-errors ecl-config ];
  nativeBuildInputs = [ ecl-license catkin ecl-errors ecl-config ];

  meta = {
    description = ''Template based exceptions - these are simple and practical
     and avoid the proliferation of exception types. Although not
     syntatactically ideal, it is convenient and eminently practical.'';
    #license = lib.licenses.BSD;
  };
}
