
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-gps-msgs";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gps_umd-release/archive/release/humble/gps_msgs/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "cdf0c0cca99e2eb23a00dbc1807493e2c970b91bcfd211e2352ce8c1d3789839";
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
