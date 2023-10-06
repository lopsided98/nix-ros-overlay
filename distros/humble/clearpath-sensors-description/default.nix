
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, realsense2-description, velodyne-description }:
buildRosPackage {
  pname = "ros-humble-clearpath-sensors-description";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/humble/clearpath_sensors_description/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "20f912b5e6ff122a3e0213cb698c1cb4d40582d116610db4d5b1651c2936ef53";
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
