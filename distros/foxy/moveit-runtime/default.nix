
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, moveit-core, moveit-planners, moveit-plugins, moveit-ros-move-group, moveit-ros-planning, moveit-ros-planning-interface, moveit-ros-warehouse }:
buildRosPackage {
  pname = "ros-foxy-moveit-runtime";
  version = "2.1.2-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit2-release/archive/release/foxy/moveit_runtime/2.1.2-1.tar.gz";
    name = "2.1.2-1.tar.gz";
    sha256 = "3232e69df937211a308f717ba78d388c76d78bc9b20b9ba786d885faf12ac8f7";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ moveit-core moveit-planners moveit-plugins moveit-ros-move-group moveit-ros-planning moveit-ros-planning-interface moveit-ros-warehouse ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''moveit_runtime meta package contains MoveIt packages that are essential for its runtime (e.g. running MoveIt on robots).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
