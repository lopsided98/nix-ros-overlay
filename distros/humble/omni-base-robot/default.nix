
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, omni-base-bringup, omni-base-controller-configuration, omni-base-description }:
buildRosPackage {
  pname = "ros-humble-omni-base-robot";
  version = "2.18.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/omni_base_robot-release/archive/release/humble/omni_base_robot/2.18.0-1.tar.gz";
    name = "2.18.0-1.tar.gz";
    sha256 = "fd292f99a3ccff12ff1b5c7146f0818cbf4c12b44eb27f986473849135ed14e7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  propagatedBuildInputs = [ omni-base-bringup omni-base-controller-configuration omni-base-description ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The omni_base_robot package";
    license = with lib.licenses; [ asl20 ];
  };
}
