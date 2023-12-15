
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, realsense2-description, velodyne-description }:
buildRosPackage {
  pname = "ros-humble-clearpath-sensors-description";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/humble/clearpath_sensors_description/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "53544e83e8375123c0fd714adae13c4c8b91bf62ad0eec81696f4430a8b93248";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ realsense2-description velodyne-description ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Clearpath sensors URDF descriptions'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
