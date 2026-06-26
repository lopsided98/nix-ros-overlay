
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, pal-sea-arm-gazebo, pal-sea-arm-mujoco }:
buildRosPackage {
  pname = "ros-humble-pal-sea-arm-simulation";
  version = "1.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pal_sea_arm_simulation-release/archive/release/humble/pal_sea_arm_simulation/1.1.2-1.tar.gz";
    name = "1.1.2-1.tar.gz";
    sha256 = "2e0fedd8e8a34732f184e0cd782dd3dcc3801dce480c1f9d9c15da858e323504";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ pal-sea-arm-gazebo pal-sea-arm-mujoco ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The pal_sea_arm_simulation package";
    license = with lib.licenses; [ asl20 ];
  };
}
