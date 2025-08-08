
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, microstrain-inertial-description, realsense2-description, velodyne-description }:
buildRosPackage {
  pname = "ros-humble-clearpath-sensors-description";
  version = "1.3.5-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/humble/clearpath_sensors_description/1.3.5-1.tar.gz";
    name = "1.3.5-1.tar.gz";
    sha256 = "fec79499c12c8ef8124872fdb26c5594fd4c1b9fdc5f7f03164de15609bb6425";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ microstrain-inertial-description realsense2-description velodyne-description ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Clearpath sensors URDF descriptions";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
