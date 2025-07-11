
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, joint-state-publisher-gui, rviz2, xacro }:
buildRosPackage {
  pname = "ros-humble-franka-description";
  version = "1.0.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/franka_description-release/archive/release/humble/franka_description/1.0.1-3.tar.gz";
    name = "1.0.1-3.tar.gz";
    sha256 = "8ef4531475037151be5470e510ed751bcbcd3f1ed24bffd843919dffaef86e53";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ joint-state-publisher-gui rviz2 xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "franka_description contains URDF files and meshes of Franka robots";
    license = with lib.licenses; [ asl20 ];
  };
}
