
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-clearpath-platform-msgs";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_msgs-release/archive/release/humble/clearpath_platform_msgs/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "651b53b16c079dfdb4ff2c4a0406232d8346e4a548970ef0ce8ab10a1c5cda0f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Messages for Clearpath Platforms.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
