
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tf2, tf2-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-foxy-tf2-tools";
  version = "0.13.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/foxy/tf2_tools/0.13.5-1.tar.gz";
    name = "0.13.5-1.tar.gz";
    sha256 = "b6cdaa8027435ce7fd88f86906a643e46a6ca335556472a241720217a9d51f25";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ tf2 tf2-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''tf2_tools'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
