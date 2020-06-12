
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-package, cmake }:
buildRosPackage {
  pname = "ros-eloquent-ros-workspace";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_workspace-release/archive/release/eloquent/ros_workspace/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "9cf0163411a2d0fc4866b6f3a25b9b669b4b8f37c43fa2b77d1ec43c0cc2d969";
  };

  buildType = "cmake";
  buildInputs = [ ament-cmake-core ament-package ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Provides the prefix level environment files for ROS 2 packages.'';
    license = with lib.licenses; [ asl20 ];
  };
}
