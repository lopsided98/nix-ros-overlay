
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-dbw-polaris-msgs";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_ros-release/archive/release/humble/dbw_polaris_msgs/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "ef019802cf637829f53f3f328390440fe94bb2ba5899d80413f28e9c54e6c64d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Drive-by-wire messages for Polaris platforms'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
