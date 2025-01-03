
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, forward-command-controller, generate-parameter-library, kuka-drivers-core, pluginlib }:
buildRosPackage {
  pname = "ros-humble-joint-group-impedance-controller";
  version = "0.9.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_drivers-release/archive/release/humble/joint_group_impedance_controller/0.9.2-1.tar.gz";
    name = "0.9.2-1.tar.gz";
    sha256 = "62f01078d62639608264efdc447bb019a9dc36d49349e42c07333d13ea32abef";
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
