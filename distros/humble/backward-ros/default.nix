
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, elfutils }:
buildRosPackage {
  pname = "ros-humble-backward-ros";
  version = "1.0.8-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/backward_ros-release/archive/release/humble/backward_ros/1.0.8-2.tar.gz";
    name = "1.0.8-2.tar.gz";
    sha256 = "1fdca233fdad2f707f2d51a43e94617f50f63b37ab8194daca2ec3fefe8949da";
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
