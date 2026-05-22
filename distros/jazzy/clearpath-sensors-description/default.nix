
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, axis-description, flir-ptu-description, microstrain-inertial-description, realsense2-description, velodyne-description, zed-description }:
buildRosPackage {
  pname = "ros-jazzy-clearpath-sensors-description";
  version = "2.9.7-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/jazzy/clearpath_sensors_description/2.9.7-1.tar.gz";
    name = "2.9.7-1.tar.gz";
    sha256 = "a6bcfb40352657499cc9650ca66ca9fd8571d14e67ee83a01f2da831c67cd347";
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
