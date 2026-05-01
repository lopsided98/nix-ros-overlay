
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, elfutils }:
buildRosPackage {
  pname = "ros-lyrical-backward-ros";
  version = "1.0.8-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/backward_ros-release/archive/release/lyrical/backward_ros/1.0.8-5.tar.gz";
    name = "1.0.8-5.tar.gz";
    sha256 = "da1632cb453d1b39f8c7df297dbd08c7478933ac465d6edb41eb42280ce396ba";
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
