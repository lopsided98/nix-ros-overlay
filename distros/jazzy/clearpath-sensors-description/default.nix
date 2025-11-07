
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, axis-description, microstrain-inertial-description, realsense2-description, velodyne-description }:
buildRosPackage {
  pname = "ros-jazzy-clearpath-sensors-description";
  version = "2.8.2-r2";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/jazzy/clearpath_sensors_description/2.8.2-2.tar.gz";
    name = "2.8.2-2.tar.gz";
    sha256 = "c63f6619dc97b069b591e2b317a2dadbdc8477676d7adc300b592c2b7d6b53c0";
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
