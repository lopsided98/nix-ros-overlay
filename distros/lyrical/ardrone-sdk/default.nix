
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, avahi, ffmpeg, json_c, ncurses }:
buildRosPackage {
  pname = "ros-lyrical-ardrone-sdk";
  version = "2.0.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ardrone_ros-release/archive/release/lyrical/ardrone_sdk/2.0.3-3.tar.gz";
    name = "2.0.3-3.tar.gz";
    sha256 = "b9be5d87a44908ae719f2224ccc0255df3a98f0b6ffb71a92a60c6abacdf5e3e";
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
