
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gps-msgs, gps-tools, gpsd-client }:
buildRosPackage {
  pname = "ros-rolling-gps-umd";
  version = "1.0.4-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gps_umd-release/archive/release/rolling/gps_umd/1.0.4-5.tar.gz";
    name = "1.0.4-5.tar.gz";
    sha256 = "69df50c82aeccd1e574af1d18fe477a4189f9fc0752eda95a9dca17797782157";
  };

  buildType = "catkin";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ gps-msgs gps-tools gpsd-client ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''gps_umd metapackage'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
