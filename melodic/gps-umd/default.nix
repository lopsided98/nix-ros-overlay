
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gps-common, catkin, gpsd-client }:
buildRosPackage {
  pname = "ros-melodic-gps-umd";
  version = "0.2.0";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/gps_umd-release/archive/release/melodic/gps_umd/0.2.0-0.tar.gz;
    sha256 = "8a74ec06defb2718bb21ef216302cc99a063ddf7f3cca8fe8b5a836a9aca9cb8";
  };

  propagatedBuildInputs = [ gps-common gpsd-client ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''gps_umd metapackage'';
    #license = lib.licenses.BSD;
  };
}
