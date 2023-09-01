
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, realsense2-description, velodyne-description }:
buildRosPackage {
  pname = "ros-humble-clearpath-sensors-description";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/humble/clearpath_sensors_description/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "58bda4705e63ea7d92d9ab80fee829637ed60da4ac02354f8f06ffed6ea61ac5";
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
