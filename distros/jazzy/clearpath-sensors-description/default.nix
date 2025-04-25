
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, axis-description, microstrain-inertial-description, realsense2-description, velodyne-description }:
buildRosPackage {
  pname = "ros-jazzy-clearpath-sensors-description";
  version = "2.3.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/jazzy/clearpath_sensors_description/2.3.1-1.tar.gz";
    name = "2.3.1-1.tar.gz";
    sha256 = "203013248f3b24544501a5cb8086b96b75b6d7d11e3c71a8c40b17fca3e124cb";
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
