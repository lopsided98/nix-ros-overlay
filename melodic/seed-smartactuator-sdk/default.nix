
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, boost }:
buildRosPackage {
  pname = "ros-melodic-seed-smartactuator-sdk";
  version = "0.0.4-r1";

  src = fetchurl {
    url = "https://github.com/seed-solutions/seed_smartactuator_sdk-release/archive/release/melodic/seed_smartactuator_sdk/0.0.4-1.tar.gz";
    name = "0.0.4-1.tar.gz";
    sha256 = "7c51aaebd83b215d47b67e5e725536ead3e01e73415bf5be00347705a5305714";
  };

  buildType = "catkin";
  buildInputs = [ boost ];
  propagatedBuildInputs = [ boost ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The seed_smartactuator_sdk package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
