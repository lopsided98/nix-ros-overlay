
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, raspimouse-fake, raspimouse-gazebo }:
buildRosPackage {
  pname = "ros-jazzy-raspimouse-sim";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/raspimouse_sim-release/archive/release/jazzy/raspimouse_sim/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "e608abd9e996302d571aedd80276d32d2bdec40e90011441f1462de2a068e94a";
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
