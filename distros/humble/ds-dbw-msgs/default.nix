
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-ds-dbw-msgs";
  version = "2.1.16-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_ros-release/archive/release/humble/ds_dbw_msgs/2.1.16-1.tar.gz";
    name = "2.1.16-1.tar.gz";
    sha256 = "50994326e74a74ba5d2edd54b78ab48b899510bbe60cf7bfcfb7f087dce4bead";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Drive-by-wire messages";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
