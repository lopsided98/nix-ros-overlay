
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, image-transport, image-transport-plugins, velodyne-pointcloud }:
buildRosPackage {
  pname = "ros-jazzy-clearpath-offboard-sensors";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_desktop-release/archive/release/jazzy/clearpath_offboard_sensors/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "bb46f16d47eafaddeb5d35cc71369c68dc49ffc48420123744b172d636d75240";
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
