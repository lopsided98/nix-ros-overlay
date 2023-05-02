
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-gps-msgs";
  version = "1.0.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gps_umd-release/archive/release/foxy/gps_msgs/1.0.8-1.tar.gz";
    name = "1.0.8-1.tar.gz";
    sha256 = "ccff4b4110cfca6b8af62a375c5cf6d4cfd982f8f8dd05d2a00d92e91638a39c";
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
