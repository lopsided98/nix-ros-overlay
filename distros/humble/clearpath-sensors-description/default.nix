
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, realsense2-description, velodyne-description }:
buildRosPackage {
  pname = "ros-humble-clearpath-sensors-description";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/humble/clearpath_sensors_description/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "ccda844c6093c9884a004fe624883f0c4e9d30280b58ef42b1769f19eaa1fc65";
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
