
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tiago-dual-gazebo }:
buildRosPackage {
  pname = "ros-humble-tiago-dual-simulation";
  version = "4.14.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tiago_dual_simulation-release/archive/release/humble/tiago_dual_simulation/4.14.0-1.tar.gz";
    name = "4.14.0-1.tar.gz";
    sha256 = "d454da1ca57fe38c97fe585f302daa70b4a4f2580f4f498bb62e678728f430de";
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
