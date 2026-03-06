
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-rosbot-bringup";
  version = "0.18.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbot_ros-release/archive/release/jazzy/rosbot_bringup/0.18.6-1.tar.gz";
    name = "0.18.6-1.tar.gz";
    sha256 = "5ddcc5c0d2beac80910e862d262b534cabaf92daec6f814520a1b86f68478f94";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROSbot Series bringup package";
    license = with lib.licenses; [ asl20 ];
  };
}
