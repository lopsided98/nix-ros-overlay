
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, axis-description, microstrain-inertial-description, realsense2-description, velodyne-description }:
buildRosPackage {
  pname = "ros-jazzy-clearpath-sensors-description";
  version = "2.9.4-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/jazzy/clearpath_sensors_description/2.9.4-1.tar.gz";
    name = "2.9.4-1.tar.gz";
    sha256 = "1fe2ad21ac269ad5093b1ada3c5e079b8c65c36fba7be179512fe50641b1af70";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ axis-description microstrain-inertial-description realsense2-description velodyne-description ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Clearpath sensors URDF descriptions";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
