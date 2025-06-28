
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, moveit-simple-controller-manager }:
buildRosPackage {
  pname = "ros-kilted-moveit-plugins";
  version = "2.13.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/kilted/moveit_plugins/2.13.2-2.tar.gz";
    name = "2.13.2-2.tar.gz";
    sha256 = "c4cb75d76cc12a8c38d422f55f22b2db414b322bba6a0cdc3ad0db23ec041138";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ moveit-simple-controller-manager ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Metapackage for MoveIt plugins.";
    license = with lib.licenses; [ bsd3 ];
  };
}
