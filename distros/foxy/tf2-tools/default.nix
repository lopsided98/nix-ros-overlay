
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tf2, tf2-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-foxy-tf2-tools";
  version = "0.13.12-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/foxy/tf2_tools/0.13.12-1.tar.gz";
    name = "0.13.12-1.tar.gz";
    sha256 = "89473b9eec78af311c8a344f5d9c4aeaaa4745b5954d48d6bfbcb5fad5ff4f35";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ tf2 tf2-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''tf2_tools'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
