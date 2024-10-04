
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-ds-dbw-msgs";
  version = "2.2.3-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_ros-release/archive/release/jazzy/ds_dbw_msgs/2.2.3-1.tar.gz";
    name = "2.2.3-1.tar.gz";
    sha256 = "d905ba7a8e5b133cbcec0a83c58dff975f9998c436c1c2deb0c76e0ebda57299";
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
