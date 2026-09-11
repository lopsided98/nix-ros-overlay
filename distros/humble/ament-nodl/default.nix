
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ros2nodl }:
buildRosPackage {
  pname = "ros-humble-ament-nodl";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nodl-release/archive/release/humble/ament_nodl/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "189f591206a929636a1560fb470bdf89bcf85d17672ffb4a3dc9d26028483a81";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ros2nodl ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "CMake macros for registering NoDL documents with the ament index.";
    license = with lib.licenses; [ asl20 ];
  };
}
