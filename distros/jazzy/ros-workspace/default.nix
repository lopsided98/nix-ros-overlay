
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-package, cmake }:
buildRosPackage {
  pname = "ros-jazzy-ros-workspace";
  version = "1.0.3-r7";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_workspace-release/archive/release/jazzy/ros_workspace/1.0.3-7.tar.gz";
    name = "1.0.3-7.tar.gz";
    sha256 = "c8752ae131d102ff2f0b2e04f10122afbe651e38b47093c10b69f598b0daad4f";
  };

  buildType = "cmake";
  buildInputs = [ ament-cmake-core ament-package cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Provides the prefix level environment files for ROS 2 packages.";
    license = with lib.licenses; [ asl20 ];
  };
}
