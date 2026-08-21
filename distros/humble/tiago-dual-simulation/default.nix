
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tiago-dual-gazebo }:
buildRosPackage {
  pname = "ros-humble-tiago-dual-simulation";
  version = "4.13.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tiago_dual_simulation-release/archive/release/humble/tiago_dual_simulation/4.13.0-1.tar.gz";
    name = "4.13.0-1.tar.gz";
    sha256 = "b668d48b0366c5e37bb019fc73d32b5f71ff4aef28e0e88893bcab288259439a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tiago-dual-gazebo ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The tiago_dual_simulation package";
    license = with lib.licenses; [ asl20 ];
  };
}
