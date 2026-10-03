
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, fss-px4-sim, fss-sensing, fss-time, launch, launch-ros, rviz2 }:
buildRosPackage {
  pname = "ros-humble-fss-bringup";
  version = "0.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fastswarmsim-release/archive/release/humble/fss_bringup/0.1.4-1.tar.gz";
    name = "0.1.4-1.tar.gz";
    sha256 = "875f425b7397aadb046a0fd7462400df7da574e390a2c611b9af11ab3a2ccd27";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ fss-px4-sim fss-sensing fss-time launch launch-ros rviz2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Integrated launch files for FastSwarmSim.";
    license = with lib.licenses; [ bsd3 ];
  };
}
