
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, raspimouse-fake, raspimouse-gazebo }:
buildRosPackage {
  pname = "ros-humble-raspimouse-sim";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/raspimouse_sim-release/archive/release/humble/raspimouse_sim/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "d6ac04a616abb7bd5a303faebdc4f6f5012fbe02db42ac18199a53d1639c9f00";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ raspimouse-fake raspimouse-gazebo ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS 2 package suite for Raspberry Pi Mouse Simulator'';
    license = with lib.licenses; [ mit ];
  };
}
