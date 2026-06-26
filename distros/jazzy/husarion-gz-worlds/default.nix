
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, launch, launch-ros, ros-gz-sim }:
buildRosPackage {
  pname = "ros-jazzy-husarion-gz-worlds";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/husarion_gz_worlds-release/archive/release/jazzy/husarion_gz_worlds/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "87d7247b1616243de57dcb9b8871d5de649259549a92a296e4ae4d6b83d1074e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ launch launch-ros ros-gz-sim ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Package containing the gazebo worlds and model";
    license = with lib.licenses; [ asl20 ];
  };
}
