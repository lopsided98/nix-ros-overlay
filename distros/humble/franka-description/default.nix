
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, joint-state-publisher-gui, rviz2, xacro }:
buildRosPackage {
  pname = "ros-humble-franka-description";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/franka_description-release/archive/release/humble/franka_description/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "092ee5e3a833ac80cabfcd468a2dcb9e8ea2cf948a09ce1e9684a8258df1c45a";
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
