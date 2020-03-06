
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gps-msgs, gps-tools, gpsd-client }:
buildRosPackage {
  pname = "ros-eloquent-gps-umd";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/gps_umd-release/archive/release/eloquent/gps_umd/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "6a71a610e1a022115e4e419eea67d4cd245a3974eb8bfc72e67edd9708e8e554";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gps-msgs gps-tools gpsd-client ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''gps_umd metapackage'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
