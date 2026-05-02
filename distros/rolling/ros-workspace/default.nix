
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-package, cmake }:
buildRosPackage {
  pname = "ros-rolling-ros-workspace";
  version = "1.0.3-r8";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_workspace-release/archive/release/rolling/ros_workspace/1.0.3-8.tar.gz";
    name = "1.0.3-8.tar.gz";
    sha256 = "212e87d7454c98c966d4c3c15b421494bf9ce71b0fafa47d40a847ea05fad109";
  };

  buildType = "cmake";
  buildInputs = [ ament-cmake-core ament-package cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Provides the prefix level environment files for ROS 2 packages.";
    license = with lib.licenses; [ asl20 ];
  };
}
