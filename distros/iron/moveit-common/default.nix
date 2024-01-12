
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, backward-ros }:
buildRosPackage {
  pname = "ros-iron-moveit-common";
  version = "2.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/iron/moveit_common/2.8.0-1.tar.gz";
    name = "2.8.0-1.tar.gz";
    sha256 = "e0adfdfcc1695d2cb460cd9f54e2e59ad1c580224a6078230f1bfafcfb1cec8a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ backward-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Common support functionality used throughout MoveIt'';
    license = with lib.licenses; [ bsd3 ];
  };
}
