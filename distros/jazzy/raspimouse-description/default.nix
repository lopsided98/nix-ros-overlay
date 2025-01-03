
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, gz-ros2-control, joint-state-publisher, joint-state-publisher-gui, launch, realsense2-description, robot-state-publisher, rviz2, urdf, xacro }:
buildRosPackage {
  pname = "ros-jazzy-raspimouse-description";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/raspimouse_description-release/archive/release/jazzy/raspimouse_description/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "5a32142c28a77d68c928c6d96eedf2d3c1d3c75e58ad99c701e58a2d8c425f5a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ gz-ros2-control joint-state-publisher joint-state-publisher-gui launch realsense2-description robot-state-publisher rviz2 urdf xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The raspimouse_description package";
    license = with lib.licenses; [ mit ];
  };
}
