
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-dataspeed-ulc-msgs";
  version = "2.1.10-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_ros-release/archive/release/humble/dataspeed_ulc_msgs/2.1.10-1.tar.gz";
    name = "2.1.10-1.tar.gz";
    sha256 = "29314a477ed9d5c7ab58f7381dabf6b66679a79616cd385e7b414c3d934ca709";
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
