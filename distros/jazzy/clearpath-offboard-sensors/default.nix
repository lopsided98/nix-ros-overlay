
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, image-transport, image-transport-plugins, velodyne-pointcloud }:
buildRosPackage {
  pname = "ros-jazzy-clearpath-offboard-sensors";
  version = "2.7.0-r2";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_desktop-release/archive/release/jazzy/clearpath_offboard_sensors/2.7.0-2.tar.gz";
    name = "2.7.0-2.tar.gz";
    sha256 = "498552bb31aac44e4229ce64f23d3a8671ea37de85c9fb3e910e45bf85a1068a";
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
