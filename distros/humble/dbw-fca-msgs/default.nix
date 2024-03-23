
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-dbw-fca-msgs";
  version = "2.1.10-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_ros-release/archive/release/humble/dbw_fca_msgs/2.1.10-1.tar.gz";
    name = "2.1.10-1.tar.gz";
    sha256 = "5a4be8aef4236d9f0e57f68127f4fc2e2b1ec3b056cc20fd8e7936ffcfba0823";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Drive-by-wire messages for the Chrysler Pacifica";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
