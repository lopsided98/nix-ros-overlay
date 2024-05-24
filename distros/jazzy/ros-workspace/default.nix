
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-package, cmake }:
buildRosPackage {
  pname = "ros-jazzy-ros-workspace";
  version = "1.0.3-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_workspace-release/archive/release/jazzy/ros_workspace/1.0.3-6.tar.gz";
    name = "1.0.3-6.tar.gz";
    sha256 = "428c382c3c6ae9030344248344f2020249889fc53490ec25dc1953e8cb7a9bb7";
  };

  buildType = "cmake";
  buildInputs = [ ament-cmake-core ament-package cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Provides the prefix level environment files for ROS 2 packages.";
    license = with lib.licenses; [ asl20 ];
  };
}
