
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-tobas-real-common";
  version = "2.16.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_real_common/2.16.4-1.tar.gz";
    name = "2.16.4-1.tar.gz";
    sha256 = "ed13979db2a8e2ae98cecb0686ecfc99d6c87912f56134414c77d58da15c44cc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Shared handler and ROS 2 interface abstractions for real Tobas hardware.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
