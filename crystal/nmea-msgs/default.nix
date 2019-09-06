
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, builtin-interfaces, ament-cmake, rosidl-default-generators, std-msgs, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-crystal-nmea-msgs";
  version = "2.0.0-r1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/nmea_msgs-release/archive/release/crystal/nmea_msgs/2.0.0-1.tar.gz;
    sha256 = "b8b45789e7f94f4153aef2bff6543ba2d51a2ab86836d74c8feb62df4253b230";
  };

  buildType = "ament_cmake";
  buildInputs = [ std-msgs rosidl-default-generators builtin-interfaces ];
  propagatedBuildInputs = [ builtin-interfaces std-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''The nmea_msgs package contains messages related to data in the NMEA format.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
