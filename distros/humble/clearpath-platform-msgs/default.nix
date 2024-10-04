
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-clearpath-platform-msgs";
  version = "0.3.0-r2";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_msgs-release/archive/release/humble/clearpath_platform_msgs/0.3.0-2.tar.gz";
    name = "0.3.0-2.tar.gz";
    sha256 = "a5b33324a41d0bc08a872777b0148786b9ba14e9ac48441fcbc60dd0b258eb12";
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
