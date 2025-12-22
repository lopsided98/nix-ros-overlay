
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_libjson-c-dev, ament-cmake, avahi, ffmpeg, ncurses }:
buildRosPackage {
  pname = "ros-jazzy-ardrone-sdk";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ardrone_ros-release/archive/release/jazzy/ardrone_sdk/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "87fbf12dd904fc6b02d359488c86f56b610b264f90331778f6988bba8915b4ad";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ _unresolved_libjson-c-dev avahi ffmpeg ncurses ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Exports ARSDK3 as a library";
    license = with lib.licenses; [ bsd3 ];
  };
}
