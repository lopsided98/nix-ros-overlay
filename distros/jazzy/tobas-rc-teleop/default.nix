
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, magic-enum, tobas-command-msgs-adapter, tobas-msgs-adapter, tobas-node, tobas-path-tools, tobas-ros2-tools, tobas-trajectory-generation }:
buildRosPackage {
  pname = "ros-jazzy-tobas-rc-teleop";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_rc_teleop/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "ae27d5b1f0436d3877349dcfa1362de81749720df096d8665cf4616e2b1b1d8e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ magic-enum tobas-command-msgs-adapter tobas-msgs-adapter tobas-node tobas-path-tools tobas-ros2-tools tobas-trajectory-generation ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "RC-input teleoperation controllers that generate flight commands for multiple control modes.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
