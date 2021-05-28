
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, moveit-planners-ompl }:
buildRosPackage {
  pname = "ros-foxy-moveit-planners";
  version = "2.1.3-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit2-release/archive/release/foxy/moveit_planners/2.1.3-1.tar.gz";
    name = "2.1.3-1.tar.gz";
    sha256 = "fc1a04a6395f9f10c987a94aed657d775f7977441ffd1edd70bd5ccbfd90e939";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ moveit-planners-ompl ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Meta package that installs all available planners for MoveIt'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
