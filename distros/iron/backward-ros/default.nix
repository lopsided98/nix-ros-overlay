
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-auto, ament-lint-common, cmake, elfutils }:
buildRosPackage {
  pname = "ros-iron-backward-ros";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/backward_ros-release/archive/release/iron/backward_ros/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "2f898265e49f6f0fc3cbcb6da93cd160cd6ca1ba4a1f50ca3aae2f862ff41463";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ elfutils ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The backward_ros package is a ros wrapper of backward-cpp from https://github.com/bombela/backward-cpp";
    license = with lib.licenses; [ mit ];
  };
}
