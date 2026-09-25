
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, axis-description, flir-ptu-description, microstrain-inertial-description, realsense2-description, velodyne-description, zed-description }:
buildRosPackage {
  pname = "ros-jazzy-clearpath-sensors-description";
  version = "2.9.17-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/jazzy/clearpath_sensors_description/2.9.17-1.tar.gz";
    name = "2.9.17-1.tar.gz";
    sha256 = "8ed747f2102520681ea3d583b18f2bf5f352951cc685afd6a1f88e1b5703fd54";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ axis-description flir-ptu-description microstrain-inertial-description realsense2-description velodyne-description zed-description ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Clearpath sensors URDF descriptions";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
