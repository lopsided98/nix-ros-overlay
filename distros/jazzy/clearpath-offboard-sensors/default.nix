
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, image-transport, image-transport-plugins, velodyne-pointcloud }:
buildRosPackage {
  pname = "ros-jazzy-clearpath-offboard-sensors";
  version = "2.9.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_desktop-release/archive/release/jazzy/clearpath_offboard_sensors/2.9.0-1.tar.gz";
    name = "2.9.0-1.tar.gz";
    sha256 = "25ac88ddfc090ed591851675b45c3022d14f6e03d9abdcb89db4c26aea6babed";
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
