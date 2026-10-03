
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-tobas-real-common";
  version = "2.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_real_common/2.16.5-1.tar.gz";
    name = "2.16.5-1.tar.gz";
    sha256 = "99da6ef3ccfdca52c8d5976495e3440415a60c5058932895ef38b93c5556fc23";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Shared handler and ROS 2 interface abstractions for real Tobas hardware.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
