
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cpp-common, roscpp-traits, catkin, roscpp-serialization, rostime }:
buildRosPackage {
  pname = "ros-melodic-roscpp-core";
  version = "0.6.12";

  src = fetchurl {
    url = "https://github.com/ros-gbp/roscpp_core-release/archive/release/melodic/roscpp_core/0.6.12-0.tar.gz";
    name = "0.6.12-0.tar.gz";
    sha256 = "814ea5bddeba2cabb4229baa27006fe21dbc56f0fd51bf3afd5e20a22b4582ec";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ roscpp-traits rostime cpp-common roscpp-serialization ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Underlying data libraries for roscpp messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
