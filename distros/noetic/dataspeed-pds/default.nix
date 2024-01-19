
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dataspeed-pds-can, dataspeed-pds-lcm, dataspeed-pds-msgs, dataspeed-pds-scripts }:
buildRosPackage {
  pname = "ros-noetic-dataspeed-pds";
  version = "1.0.6-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dataspeed_pds-release/archive/release/noetic/dataspeed_pds/1.0.6-1.tar.gz";
    name = "1.0.6-1.tar.gz";
    sha256 = "93c905bc798c40a8342c4179e3648e58d8f267a2d684286a67fb142e85db2bc2";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ dataspeed-pds-can dataspeed-pds-lcm dataspeed-pds-msgs dataspeed-pds-scripts ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Interface to the Dataspeed Inc. Intelligent Power Distribution System (iPDS)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
