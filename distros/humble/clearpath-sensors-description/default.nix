
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, microstrain-inertial-description, realsense2-description, velodyne-description }:
buildRosPackage {
  pname = "ros-humble-clearpath-sensors-description";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/humble/clearpath_sensors_description/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "393427500e5140db5c606b8f2a6cb8d2021c6d2360a8796f5e8dc2c26a8d8104";
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
