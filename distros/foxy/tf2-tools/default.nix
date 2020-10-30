
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tf2, tf2-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-foxy-tf2-tools";
  version = "0.13.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/foxy/tf2_tools/0.13.6-1.tar.gz";
    name = "0.13.6-1.tar.gz";
    sha256 = "e2162184fc82a56eaded99545824011698db887bf8e9b5df101ecc702a210c5d";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ tf2 tf2-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''tf2_tools'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
