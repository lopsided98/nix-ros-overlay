
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cpp-common, roscpp-traits, catkin, roscpp-serialization, rostime }:
buildRosPackage {
  pname = "ros-lunar-roscpp-core";
  version = "0.6.11";

  src = fetchurl {
    url = https://github.com/ros-gbp/roscpp_core-release/archive/release/lunar/roscpp_core/0.6.11-0.tar.gz;
    sha256 = "6dab096f17fdfee91f5f81fd9145e2a36ec937e1bf2ded0a4cda4719325a4c73";
  };

  propagatedBuildInputs = [ roscpp-traits rostime cpp-common roscpp-serialization ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Underlying data libraries for roscpp messages.'';
    #license = lib.licenses.BSD;
  };
}
