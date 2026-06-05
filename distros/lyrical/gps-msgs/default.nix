
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-gps-msgs";
  version = "2.1.2-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gps_umd-release/archive/release/lyrical/gps_msgs/2.1.2-4.tar.gz";
    name = "2.1.2-4.tar.gz";
    sha256 = "ed51b31ca52bad4d8f8bac1b178d1ec2200cbfbe573d6fc455bd24af026bd7e8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "GPS messages for use in GPS drivers";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
