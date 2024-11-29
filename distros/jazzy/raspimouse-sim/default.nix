
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, raspimouse-fake, raspimouse-gazebo }:
buildRosPackage {
  pname = "ros-jazzy-raspimouse-sim";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/raspimouse_sim-release/archive/release/jazzy/raspimouse_sim/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "8fe1cf996a5cc9c3c639502c0ea42a4095ccbe10e5252fed6a9e7252c74d66f7";
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
