
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-clearpath-platform-msgs";
  version = "2.2.2-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_msgs-release/archive/release/jazzy/clearpath_platform_msgs/2.2.2-1.tar.gz";
    name = "2.2.2-1.tar.gz";
    sha256 = "e7b84cd5c1d800c4329d94b77b9af259c4cc2c1eaf619dd6e77d710ca80614fe";
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
