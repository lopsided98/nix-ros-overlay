
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-compass-msgs";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/manankharwar/fusioncore-release/archive/release/jazzy/compass_msgs/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "017819e9e9b088ad900f6980e8055f5a6428578c22a872e1ab97d82dcb537e7d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "ROS 2 port of compass_msgs: messages related to compass and azimuth.
    Message definition identical to ctu-vras/compass for compatibility.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
