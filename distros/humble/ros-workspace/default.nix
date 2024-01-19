
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-package, cmake }:
buildRosPackage {
  pname = "ros-humble-ros-workspace";
  version = "1.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_workspace-release/archive/release/humble/ros_workspace/1.0.2-2.tar.gz";
    name = "1.0.2-2.tar.gz";
    sha256 = "4b3043a5011161d87e4892a58e106a8ba5cb45dcf9b96e027968c0e5de6da443";
  };

  buildType = "cmake";
  buildInputs = [ ament-cmake-core ament-package cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Provides the prefix level environment files for ROS 2 packages.'';
    license = with lib.licenses; [ asl20 ];
  };
}
