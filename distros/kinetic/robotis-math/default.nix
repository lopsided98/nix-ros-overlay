
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-robotis-math";
  version = "0.2.6";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/ROBOTIS-Math-release/archive/release/kinetic/robotis_math/0.2.6-0.tar.gz";
    name = "0.2.6-0.tar.gz";
    sha256 = "3004f917906cfaf06a61a0c0bad0dd14d24693b47f82fe5520008dddb9eaf175";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ eigen roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package is a set of basic math fuctions for ROBOTIS's robots.
    We provide some linear algebra and trajectory generation funntions and classes.'';
    license = with lib.licenses; [ asl20 ];
  };
}
