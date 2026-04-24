
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-compass-msgs";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/manankharwar/fusioncore-release/archive/release/jazzy/compass_msgs/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "d82a882d12564b2b2d29f06f1841697090cd997347a84975ad9556bd53e62a37";
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
