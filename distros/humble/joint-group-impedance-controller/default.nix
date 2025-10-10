
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, forward-command-controller, generate-parameter-library, kuka-drivers-core, pluginlib }:
buildRosPackage {
  pname = "ros-humble-joint-group-impedance-controller";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_drivers-release/archive/release/humble/joint_group_impedance_controller/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "e4c7c77f67847a21472c895bf9b0d7a7de277c7296afa8486f5ee45d7ec49412";
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
