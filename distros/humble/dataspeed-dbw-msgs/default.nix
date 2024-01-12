
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-dataspeed-dbw-msgs";
  version = "2.1.3-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_ros-release/archive/release/humble/dataspeed_dbw_msgs/2.1.3-1.tar.gz";
    name = "2.1.3-1.tar.gz";
    sha256 = "a5fe26afa96373dc74b38e8b9affa07a92342813c0d088514564dbe6628b4cc9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS messages for interacting with the Universal Lat/Lon Controller (ULC)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
