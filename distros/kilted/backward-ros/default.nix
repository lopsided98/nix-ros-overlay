
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, elfutils }:
buildRosPackage {
  pname = "ros-kilted-backward-ros";
  version = "1.0.7-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/backward_ros-release/archive/release/kilted/backward_ros/1.0.7-2.tar.gz";
    name = "1.0.7-2.tar.gz";
    sha256 = "dfada86410d4fe74aeccf037d62715031b8ba3789be9e162f63dc3b182458686";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ elfutils ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The backward_ros package is a ros wrapper of backward-cpp from https://github.com/bombela/backward-cpp";
    license = with lib.licenses; [ mit ];
  };
}
