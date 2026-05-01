
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ouxt-lint-common }:
buildRosPackage {
  pname = "ros-lyrical-ouxt-common";
  version = "0.0.8-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ouxt_common-release/archive/release/lyrical/ouxt_common/0.0.8-6.tar.gz";
    name = "0.0.8-6.tar.gz";
    sha256 = "55aa00b8664663966b9b34518e43faa721fc9344f12cbc939394b0b5b58f11e2";
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
