
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_libjson-c-dev, ament-cmake, avahi, ffmpeg, ncurses }:
buildRosPackage {
  pname = "ros-humble-ardrone-sdk";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ardrone_ros-release/archive/release/humble/ardrone_sdk/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "bb76f6fe66bb88f0d47f1a7e599f0021c5c2fc359da2b8f95016f2132523eae0";
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
