
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, xacro }:
buildRosPackage {
  pname = "ros-lyrical-easynav-playground-tiago-description";
  version = "0.5.1-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_playgrounds-release/archive/release/lyrical/easynav_playground_tiago_description/0.5.1-1.tar.gz";
    name = "0.5.1-1.tar.gz";
    sha256 = "415f940bb13abf3962f53021c1c58c5ba806d7c27a20138657f7b3f68b28f893";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "TIAGo robot description for the EasyNav playgrounds: URDF, meshes and ros2_control controllers. PAL Robotics' TIAGo, expanded from its Gazebo Harmonic ports.";
    license = with lib.licenses; [ asl20 ];
  };
}
