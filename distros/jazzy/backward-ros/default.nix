
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, elfutils }:
buildRosPackage {
  pname = "ros-jazzy-backward-ros";
  version = "1.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/backward_ros-release/archive/release/jazzy/backward_ros/1.0.7-1.tar.gz";
    name = "1.0.7-1.tar.gz";
    sha256 = "d704b2567ebe5050e5c1f621e31a4ad1e2560180a89ff9e6ecc041854821327a";
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
