
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-dataspeed-ulc-msgs";
  version = "2.1.16-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_ros-release/archive/release/humble/dataspeed_ulc_msgs/2.1.16-1.tar.gz";
    name = "2.1.16-1.tar.gz";
    sha256 = "acd28989b1b06c64f61891fe7f0e4cba89632d30198b028df791495cc826ed8a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS messages for interacting with the Universal Lat/Lon Controller (ULC)";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
