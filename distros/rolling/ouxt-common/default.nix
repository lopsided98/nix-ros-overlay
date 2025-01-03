
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ouxt-lint-common }:
buildRosPackage {
  pname = "ros-rolling-ouxt-common";
  version = "0.0.8-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ouxt_common-release/archive/release/rolling/ouxt_common/0.0.8-4.tar.gz";
    name = "0.0.8-4.tar.gz";
    sha256 = "953f920104496538ce8c7600518b4a2fd3063c65d91e15513b4dae464f4002ae";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ouxt-lint-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "common settings for OUXT Polaris ROS2 packages";
    license = with lib.licenses; [ asl20 ];
  };
}
