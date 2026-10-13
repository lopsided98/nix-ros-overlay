
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, xacro }:
buildRosPackage {
  pname = "ros-jazzy-easynav-playground-kobuki-description";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_playgrounds-release/archive/release/jazzy/easynav_playground_kobuki_description/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "cdd57d1de16ea66eac633f1ebb816474728baef1ea7013ef0af1721d5c9dd782";
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
