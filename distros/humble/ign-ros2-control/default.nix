
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gz-ros2-control }:
buildRosPackage {
  pname = "ros-humble-ign-ros2-control";
  version = "0.7.14-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ign_ros2_control-release/archive/release/humble/ign_ros2_control/0.7.14-1.tar.gz";
    name = "0.7.14-1.tar.gz";
    sha256 = "692da5130721cd36103a8b140f7ac75f68403c71fa52be3e1963e55d1b1ded9d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ gz-ros2-control ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Ignition ros2_control package allows to control simulated robots using ros2_control framework.";
    license = with lib.licenses; [ asl20 ];
  };
}
