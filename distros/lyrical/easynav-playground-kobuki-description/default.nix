
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, xacro }:
buildRosPackage {
  pname = "ros-lyrical-easynav-playground-kobuki-description";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_playgrounds-release/archive/release/lyrical/easynav_playground_kobuki_description/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "5fb5f660f1e3e2f193a7d72c528aadcdb3ed08a37b5d443d4722eae96d2169be";
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
