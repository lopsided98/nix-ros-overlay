
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-rosbot";
  version = "0.18.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbot_ros-release/archive/release/jazzy/rosbot/0.18.6-1.tar.gz";
    name = "0.18.6-1.tar.gz";
    sha256 = "735bb8a6185e62980345fafc15a55f02980de732813f6d3b37a9f9be87a8df0b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Meta package that contains all packages of ROSbot Series";
    license = with lib.licenses; [ asl20 ];
  };
}
