
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-package, cmake }:
buildRosPackage {
  pname = "ros-foxy-ros-workspace";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_workspace-release/archive/release/foxy/ros_workspace/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "e3797244bf456109aa2752c797d1f45d2875c576631cfa6291bc66a29abcc652";
  };

  buildType = "cmake";
  buildInputs = [ ament-cmake-core ament-package cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Provides the prefix level environment files for ROS 2 packages.'';
    license = with lib.licenses; [ asl20 ];
  };
}
