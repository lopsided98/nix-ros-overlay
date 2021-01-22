
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, variant-msgs, variant-topic-test, variant-topic-tools }:
buildRosPackage {
  pname = "ros-kinetic-variant";
  version = "0.1.5";

  src = fetchurl {
    url = "https://github.com/anybotics/variant-release/archive/release/kinetic/variant/0.1.5-0.tar.gz";
    name = "0.1.5-0.tar.gz";
    sha256 = "a64ca4d8b91e8bdf719d0604959a08f1483b19581de355f5213fc696557eb18f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ variant-msgs variant-topic-test variant-topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meta-package for the universal variant library.'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
