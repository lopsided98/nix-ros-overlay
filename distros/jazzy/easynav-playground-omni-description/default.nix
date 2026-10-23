
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, xacro }:
buildRosPackage {
  pname = "ros-jazzy-easynav-playground-omni-description";
  version = "0.5.1-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_playgrounds-release/archive/release/jazzy/easynav_playground_omni_description/0.5.1-1.tar.gz";
    name = "0.5.1-1.tar.gz";
    sha256 = "d16b32951bf03a4a7013d6df999660a98f7080cf2420dac15dccc840bfa63030";
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
