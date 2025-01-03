
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-dbw-ford-msgs";
  version = "2.1.16-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_ros-release/archive/release/humble/dbw_ford_msgs/2.1.16-1.tar.gz";
    name = "2.1.16-1.tar.gz";
    sha256 = "ef51a397bbb51fc5d9505f82680150799fd7fc9e7227cae1e93be2b4880fcc81";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Drive-by-wire messages for the Lincoln MKZ";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
