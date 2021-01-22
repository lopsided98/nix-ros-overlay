
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-package, cmake }:
buildRosPackage {
  pname = "ros-foxy-ros-workspace";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_workspace-release/archive/release/foxy/ros_workspace/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "decafbf4c498c03d4a8f711413674c575af456e008c4f2fc8790618b1492cd40";
  };

  buildType = "cmake";
  buildInputs = [ ament-cmake-core ament-package ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Provides the prefix level environment files for ROS 2 packages.'';
    license = with lib.licenses; [ asl20 ];
  };
}
