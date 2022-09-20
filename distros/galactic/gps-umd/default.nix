
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gps-msgs, gps-tools, gpsd-client }:
buildRosPackage {
  pname = "ros-galactic-gps-umd";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gps_umd-release/archive/release/galactic/gps_umd/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "352c0ee472661fd1088e7c3d965609ed95db1ae0ee1273f46fbfc9ecadd278d1";
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
