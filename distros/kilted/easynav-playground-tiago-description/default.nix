
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, xacro }:
buildRosPackage {
  pname = "ros-kilted-easynav-playground-tiago-description";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_playgrounds-release/archive/release/kilted/easynav_playground_tiago_description/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "1948729a3074b7f81130275fd3ba5930480b3a50143fa31782b695dbbbe7e1e0";
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
