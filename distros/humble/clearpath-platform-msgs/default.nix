
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-clearpath-platform-msgs";
  version = "0.0.3-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_msgs-release/archive/release/humble/clearpath_platform_msgs/0.0.3-1.tar.gz";
    name = "0.0.3-1.tar.gz";
    sha256 = "b964f9e2cf355e7544501398db83a2677971f9f27ad5c32c773b1dbc51a8eb02";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Messages for Clearpath Platforms.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
