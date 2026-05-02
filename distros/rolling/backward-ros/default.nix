
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, elfutils }:
buildRosPackage {
  pname = "ros-rolling-backward-ros";
  version = "1.0.8-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/backward_ros-release/archive/release/rolling/backward_ros/1.0.8-4.tar.gz";
    name = "1.0.8-4.tar.gz";
    sha256 = "d5f6e38d3042c7543460de56357be2241cd9b801a700ee837c17883bfece4eac";
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
