
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tiago-pro-gazebo, tiago-pro-mujoco }:
buildRosPackage {
  pname = "ros-humble-tiago-pro-simulation";
  version = "1.19.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tiago_pro_simulation-release/archive/release/humble/tiago_pro_simulation/1.19.0-1.tar.gz";
    name = "1.19.0-1.tar.gz";
    sha256 = "0605ab4dba1a9ab424d73a1c4df871c46649ee8ca8913fb296d5e7bd6d0c1ba9";
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
