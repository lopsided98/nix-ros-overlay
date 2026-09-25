
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-tobas-real-common";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_real_common/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "786bdbaaa88708a9b86cfb36898b8eba86f9d458cbb3e0618a5806cfdf7d1c30";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Shared handler and ROS 2 interface abstractions for real Tobas hardware.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
