
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, raspimouse-fake, raspimouse-gazebo }:
buildRosPackage {
  pname = "ros-humble-raspimouse-sim";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/raspimouse_sim-release/archive/release/humble/raspimouse_sim/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "3f27d185166372abae4c7ae1bf490c4ec31e6197773cfd1d82e2bbfe9b703f85";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ raspimouse-fake raspimouse-gazebo ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 package suite for Raspberry Pi Mouse Simulator";
    license = with lib.licenses; [ mit ];
  };
}
