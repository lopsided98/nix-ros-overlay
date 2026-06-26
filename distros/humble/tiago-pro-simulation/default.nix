
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tiago-pro-gazebo, tiago-pro-mujoco }:
buildRosPackage {
  pname = "ros-humble-tiago-pro-simulation";
  version = "1.17.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tiago_pro_simulation-release/archive/release/humble/tiago_pro_simulation/1.17.1-1.tar.gz";
    name = "1.17.1-1.tar.gz";
    sha256 = "d4d856da4bf3b4694d968c9aacb9bf594c6c8a237864a0f55baa0af3c871e2d5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tiago-pro-gazebo tiago-pro-mujoco ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The tiago_pro_simulation package";
    license = with lib.licenses; [ asl20 ];
  };
}
