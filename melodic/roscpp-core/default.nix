
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roscpp-serialization, catkin, cpp-common, roscpp-traits, rostime }:
buildRosPackage {
  pname = "ros-melodic-roscpp-core";
  version = "0.6.13-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/roscpp_core-release/archive/release/melodic/roscpp_core/0.6.13-1.tar.gz";
    name = "0.6.13-1.tar.gz";
    sha256 = "34802c1855568443ecadfde7ccaa2e3616101035de9730249804d7acfdfc2046";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ roscpp-serialization cpp-common roscpp-traits rostime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Underlying data libraries for roscpp messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
