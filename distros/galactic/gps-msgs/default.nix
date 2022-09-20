
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-galactic-gps-msgs";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gps_umd-release/archive/release/galactic/gps_msgs/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "fc917e0a56a0704a851f765c48794122a5b1b8ba1fe8ad03eb90b1de95322d2a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''GPS messages for use in GPS drivers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
