
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gps-msgs, gps-tools, gpsd-client }:
buildRosPackage {
  pname = "ros-foxy-gps-umd";
  version = "1.0.5-r2";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/gps_umd-release/archive/release/foxy/gps_umd/1.0.5-2.tar.gz";
    name = "1.0.5-2.tar.gz";
    sha256 = "86c23d481a6c88e65e280af9892f9e8d34ee4b275475feb2bebbd125fcb9983b";
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
