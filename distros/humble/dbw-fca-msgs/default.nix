
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-dbw-fca-msgs";
  version = "2.1.3-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_ros-release/archive/release/humble/dbw_fca_msgs/2.1.3-1.tar.gz";
    name = "2.1.3-1.tar.gz";
    sha256 = "63c9085654fac36703d82f30ebdf58fb54d29c65df332320a63fef277b2083cc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Drive-by-wire messages for the Chrysler Pacifica'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
