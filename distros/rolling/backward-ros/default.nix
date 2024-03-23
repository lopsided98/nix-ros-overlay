
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, elfutils }:
buildRosPackage {
  pname = "ros-rolling-backward-ros";
  version = "1.0.2-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/backward_ros-release/archive/release/rolling/backward_ros/1.0.2-5.tar.gz";
    name = "1.0.2-5.tar.gz";
    sha256 = "4945543dd5b7dba7dee4e039948e9c00e694cb3655a287bbae1c45e6462dcbf5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ elfutils ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The backward_ros package is a ros wrapper of backward-cpp from https://github.com/bombela/backward-cpp";
    license = with lib.licenses; [ mit ];
  };
}
