
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rostest, catkin, roslint, roscpp }:
buildRosPackage {
  pname = "ros-lunar-neonavigation-common";
  version = "0.3.1";

  src = fetchurl {
    url = https://github.com/at-wat/neonavigation-release/archive/release/lunar/neonavigation_common/0.3.1-0.tar.gz;
    sha256 = "dea5d36f72fb7fce7b6482aff43a7491f29d6a14695e993cbfd7fb72fff370d3";
  };

  buildInputs = [ roscpp ];
  checkInputs = [ rostest roslint ];
  propagatedBuildInputs = [ roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Common headers for neonavigation meta-package'';
    #license = lib.licenses.BSD;
  };
}
