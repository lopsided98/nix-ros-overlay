
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, xacro }:
buildRosPackage {
  pname = "ros-kilted-easynav-playground-kobuki-description";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_playgrounds-release/archive/release/kilted/easynav_playground_kobuki_description/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "7605bdc184b32d4e34d56b067a02b68d4ded1a31dfadba188a0fd7aee999a1ad";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Kobuki (Turtlebot 2) robot description for the EasyNav playgrounds: URDF and meshes, from kobuki_ros.";
    license = with lib.licenses; [ bsd3 ];
  };
}
