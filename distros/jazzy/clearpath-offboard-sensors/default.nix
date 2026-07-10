
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, image-transport, image-transport-plugins, velodyne-pointcloud }:
buildRosPackage {
  pname = "ros-jazzy-clearpath-offboard-sensors";
  version = "2.9.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_desktop-release/archive/release/jazzy/clearpath_offboard_sensors/2.9.1-1.tar.gz";
    name = "2.9.1-1.tar.gz";
    sha256 = "a513820894daed8ac13ab5d401d200367270194709cc1be84f13cb5fcc3ac52e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ image-transport image-transport-plugins velodyne-pointcloud ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Launch files for decompressing and consuming high-bandwidth sensor data on offboard computers";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
