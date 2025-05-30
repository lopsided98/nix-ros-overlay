
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-gps-msgs";
  version = "2.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gps_umd-release/archive/release/jazzy/gps_msgs/2.0.5-1.tar.gz";
    name = "2.0.5-1.tar.gz";
    sha256 = "43a7d33632ef2266334d92b3cd0837044d6d9edd9341d8b18eaa2c7452bca4e7";
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
