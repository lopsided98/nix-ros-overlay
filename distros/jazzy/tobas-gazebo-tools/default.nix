
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gz-sim-vendor }:
buildRosPackage {
  pname = "ros-jazzy-tobas-gazebo-tools";
  version = "2.16.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_gazebo_tools/2.16.10-1.tar.gz";
    name = "2.16.10-1.tar.gz";
    sha256 = "7b1cbc9389ae7c3154517be23d56955e4e956efe086c80b3a0b35723541860e1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ gz-sim-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Utility nodes and tools for controlling and inspecting Tobas Gazebo simulations.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
