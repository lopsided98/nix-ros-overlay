
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-command-msgs, tobas-kdl-msgs-adapter }:
buildRosPackage {
  pname = "ros-jazzy-tobas-command-msgs-adapter";
  version = "2.16.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_command_msgs_adapter/2.16.4-1.tar.gz";
    name = "2.16.4-1.tar.gz";
    sha256 = "aac0d9aeb7e1d388737a0c7c92d52dd2da823803b68ed168bb9aa5eeabf3ea8d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-command-msgs tobas-kdl-msgs-adapter ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 type adapters for Tobas flight-command message types.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
