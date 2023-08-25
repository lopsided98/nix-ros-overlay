
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, realsense2-description, velodyne-description }:
buildRosPackage {
  pname = "ros-humble-clearpath-sensors-description";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/humble/clearpath_sensors_description/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "629eba98bd57344882f15bc008425f0bb67bde0ee3333f6600b15d1daa34b190";
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
