
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, elfutils }:
buildRosPackage {
  pname = "ros-humble-backward-ros";
  version = "1.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/backward_ros-release/archive/release/humble/backward_ros/1.0.7-1.tar.gz";
    name = "1.0.7-1.tar.gz";
    sha256 = "1689006a5358b7121e093bfeac5b8e933be4b6029e599cf0bb8013fdc57e75e5";
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
