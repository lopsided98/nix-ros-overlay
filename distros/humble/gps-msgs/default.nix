
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-gps-msgs";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gps_umd-release/archive/release/humble/gps_msgs/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "71ecfe3faf44f1849bd68881603e46e583cff0bad58bee3b880e7f8aba64ae2e";
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
