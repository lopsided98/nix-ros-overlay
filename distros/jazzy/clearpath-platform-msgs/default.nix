
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-clearpath-platform-msgs";
  version = "2.6.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_msgs-release/archive/release/jazzy/clearpath_platform_msgs/2.6.0-1.tar.gz";
    name = "2.6.0-1.tar.gz";
    sha256 = "dc6f0a6e04fb084b90ff09e65033a9127fe0750729834a465e2e16f700e943a1";
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
