
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-cmake-python, ament-index-python, joint-state-publisher-gui, robot-state-publisher, ros2launch, rviz2, xacro }:
buildRosPackage {
  pname = "ros-humble-andino-description";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/andino-release/archive/release/humble/andino_description/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "d8a474bf91bdc6cd6deeb7ca81e8928437b8ba9535c43ba47d22dd038294f315";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-pytest ament-index-python ];
  propagatedBuildInputs = [ joint-state-publisher-gui robot-state-publisher ros2launch rviz2 xacro ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "The andino_description package";
    license = with lib.licenses; [ "BSD-Clause-3" ];
  };
}
