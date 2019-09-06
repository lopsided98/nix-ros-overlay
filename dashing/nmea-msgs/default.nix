
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, builtin-interfaces, ament-cmake, rosidl-default-generators, std-msgs, rosidl-default-runtime }:
buildRosPackage rec {
  pname = "ros-dashing-nmea-msgs";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nmea_msgs-release/archive/release/dashing/nmea_msgs/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "6b14177fe063308c1935c7fb0aa1f062eefa1bb68e258596abb28209c4d72e25";
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
