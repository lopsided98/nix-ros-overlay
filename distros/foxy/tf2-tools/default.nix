
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, graphviz, tf2, tf2-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-foxy-tf2-tools";
  version = "0.13.13-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/foxy/tf2_tools/0.13.13-1.tar.gz";
    name = "0.13.13-1.tar.gz";
    sha256 = "ea5a1790e35089726935be7a4fc71c0bd88cd618c25b974a4136db96b1ec520a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ graphviz tf2 tf2-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''tf2_tools'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
