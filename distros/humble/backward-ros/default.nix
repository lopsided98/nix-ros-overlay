
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, elfutils }:
buildRosPackage {
  pname = "ros-humble-backward-ros";
  version = "1.0.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/backward_ros-release/archive/release/humble/backward_ros/1.0.6-1.tar.gz";
    name = "1.0.6-1.tar.gz";
    sha256 = "8e8e19d24a46673ba94e22f96fa8f6cf8defbc76c64d566d7d4e5d9e352cbbb5";
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
