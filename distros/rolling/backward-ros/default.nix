
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, elfutils }:
buildRosPackage {
  pname = "ros-rolling-backward-ros";
  version = "1.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/backward_ros-release/archive/release/rolling/backward_ros/1.0.2-2.tar.gz";
    name = "1.0.2-2.tar.gz";
    sha256 = "81b70852e1962d2b9fdb0dc7a5c9618ed16de077ce0b692cf374ca88695e6a37";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ elfutils ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The backward_ros package is a ros wrapper of backward-cpp from https://github.com/bombela/backward-cpp'';
    license = with lib.licenses; [ mit ];
  };
}
