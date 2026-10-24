
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, xacro }:
buildRosPackage {
  pname = "ros-jazzy-easynav-playground-kobuki-description";
  version = "0.5.1-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/easynav_playgrounds-release/archive/release/jazzy/easynav_playground_kobuki_description/0.5.1-1.tar.gz";
    name = "0.5.1-1.tar.gz";
    sha256 = "ab2bb1a51ccd1a80449db75ab94a7ea844b2f9d1a14b9d62fb75b23f5f41da0e";
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
