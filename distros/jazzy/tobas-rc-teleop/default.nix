
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, magic-enum, tobas-command-msgs-adapter, tobas-msgs-adapter, tobas-node, tobas-path-tools, tobas-ros2-tools, tobas-trajectory-generation }:
buildRosPackage {
  pname = "ros-jazzy-tobas-rc-teleop";
  version = "2.16.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_rc_teleop/2.16.4-1.tar.gz";
    name = "2.16.4-1.tar.gz";
    sha256 = "d4300deb3b6b0de33643d156a4625a2c25e3d4f150419a9a45e2da236022aa2f";
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
