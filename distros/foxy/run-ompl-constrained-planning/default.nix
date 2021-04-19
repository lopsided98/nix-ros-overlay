
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, moveit-common, moveit-ros-planning-interface, warehouse-ros-mongo }:
buildRosPackage {
  pname = "ros-foxy-run-ompl-constrained-planning";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit2-release/archive/release/foxy/run_ompl_constrained_planning/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "aec3e638945d1dff4eaa20ac5c989d16e7e2da3f26463fd77478efc8b822b712";
  };

  buildType = "ament_cmake";
  buildInputs = [ moveit-common ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ moveit-ros-planning-interface warehouse-ros-mongo ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Demo ompl constrained planning capabilities'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
