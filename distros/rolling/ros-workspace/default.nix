
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-package, cmake }:
buildRosPackage {
  pname = "ros-rolling-ros-workspace";
  version = "1.0.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_workspace-release/archive/release/rolling/ros_workspace/1.0.3-3.tar.gz";
    name = "1.0.3-3.tar.gz";
    sha256 = "55e495b03dbc8550f3312ef012f478ae445a211dd370bb7453cc276162c076be";
  };

  buildType = "cmake";
  buildInputs = [ ament-cmake-core ament-package cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Provides the prefix level environment files for ROS 2 packages.'';
    license = with lib.licenses; [ asl20 ];
  };
}
