
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, moveit-planners-ompl }:
buildRosPackage {
  pname = "ros-foxy-moveit-planners";
  version = "2.1.4-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit2-release/archive/release/foxy/moveit_planners/2.1.4-1.tar.gz";
    name = "2.1.4-1.tar.gz";
    sha256 = "0f208d51e4f33020b4d4794467e4f1697cbf59bdbcf15395b17c4a68b2136e93";
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
