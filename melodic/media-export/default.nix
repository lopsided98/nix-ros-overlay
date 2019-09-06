
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-media-export";
  version = "0.2.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/media_export-release/archive/release/melodic/media_export/0.2.0-0.tar.gz";
    name = "0.2.0-0.tar.gz";
    sha256 = "dba5a590101d4f4969a5f963f8fba90fff5a095e0c19770166787d22bdb799e3";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Placeholder package enabling generic export of media paths.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
