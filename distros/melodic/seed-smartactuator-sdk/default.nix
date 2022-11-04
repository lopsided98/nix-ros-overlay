
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin }:
buildRosPackage {
  pname = "ros-melodic-seed-smartactuator-sdk";
  version = "0.0.5-r3";

  src = fetchurl {
    url = "https://github.com/seed-solutions/seed_smartactuator_sdk-release/archive/release/melodic/seed_smartactuator_sdk/0.0.5-3.tar.gz";
    name = "0.0.5-3.tar.gz";
    sha256 = "445ac23ff8cd18327f9575b9b033f17af9202233ac66fd0139f019e560aceb95";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ boost ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The seed_smartactuator_sdk package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
