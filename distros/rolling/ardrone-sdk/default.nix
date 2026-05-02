
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, avahi, ffmpeg, json_c, ncurses }:
buildRosPackage {
  pname = "ros-rolling-ardrone-sdk";
  version = "2.0.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ardrone_ros-release/archive/release/rolling/ardrone_sdk/2.0.3-2.tar.gz";
    name = "2.0.3-2.tar.gz";
    sha256 = "0cc8775b737d61e024c12bb0b193733cf73898c4fd83fa017c0cf754cf836c11";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ avahi ffmpeg json_c ncurses ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Exports ARSDK3 as a library";
    license = with lib.licenses; [ bsd3 ];
  };
}
