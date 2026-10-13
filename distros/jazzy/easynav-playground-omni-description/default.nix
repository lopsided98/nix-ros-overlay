
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, xacro }:
buildRosPackage {
  pname = "ros-jazzy-easynav-playground-omni-description";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_playgrounds-release/archive/release/jazzy/easynav_playground_omni_description/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "cc7878ff7b20c71b8f384edd56e59cc0bf50d058ea1807ff3f6ffbc40b9075be";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Omnidirectional robots (three to six wheels) description for the EasyNav playgrounds: URDF, meshes and ros2_control controllers, from ros2_omni_robot_sim.";
    license = with lib.licenses; [ mit ];
  };
}
