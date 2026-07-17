
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, forward-command-controller, generate-parameter-library, kuka-drivers-core, pluginlib }:
buildRosPackage {
  pname = "ros-jazzy-joint-group-impedance-controller";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_drivers-release/archive/release/jazzy/joint_group_impedance_controller/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "6d4b325b0a865027bf9531a3ea6f2d8e84dadcb3086a3ecc4300e5c55f3f62a6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ forward-command-controller generate-parameter-library kuka-drivers-core pluginlib ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Controller for modifying impedance (stiffness and damping) interfaces of a joint group";
    license = with lib.licenses; [ asl20 ];
  };
}
