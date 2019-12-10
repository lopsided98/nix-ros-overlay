
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin }:
buildRosPackage {
  pname = "ros-kinetic-seed-smartactuator-sdk";
  version = "0.0.4-r1";

  src = fetchurl {
    url = "https://github.com/seed-solutions/seed_smartactuator_sdk-release/archive/release/kinetic/seed_smartactuator_sdk/0.0.4-1.tar.gz";
    name = "0.0.4-1.tar.gz";
    sha256 = "e929721fb71d738544622d61a33a4947283d215c72b3960d8e5f6d2a1518fb85";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ boost ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The seed_smartactuator_sdk package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
