
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-clearpath-platform-msgs";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_msgs-release/archive/release/humble/clearpath_platform_msgs/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "ef0a5b9cabf444a95e969b31444587f9a3ab00855d5080114c5838b8fdca69f7";
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
