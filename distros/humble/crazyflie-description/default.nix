
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-humble-crazyflie-description";
  version = "1.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/crazyswarm2-release/archive/release/humble/crazyflie_description/1.0.7-1.tar.gz";
    name = "1.0.7-1.tar.gz";
    sha256 = "f2fe6eeb66f43af98c18545b5fe5c8acea5e1fe3e4a8db33316ac477b69f8c83";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "URDF and mesh assets for the Crazyflie robot";
    license = with lib.licenses; [ mit ];
  };
}
