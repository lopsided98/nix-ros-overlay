
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-package, cmake }:
buildRosPackage {
  pname = "ros-kilted-ros-workspace";
  version = "1.0.3-r7";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_workspace-release/archive/release/kilted/ros_workspace/1.0.3-7.tar.gz";
    name = "1.0.3-7.tar.gz";
    sha256 = "20c7da08a3f0de1dd07434c5c608164e20064993436b68eaa8ab68400be4c12c";
  };

  buildType = "cmake";
  buildInputs = [ ament-cmake-core ament-package cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Provides the prefix level environment files for ROS 2 packages.";
    license = with lib.licenses; [ asl20 ];
  };
}
