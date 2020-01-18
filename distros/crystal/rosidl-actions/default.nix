
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, pythonPackages, rosidl-parser }:
buildRosPackage {
  pname = "ros-crystal-rosidl-actions";
  version = "0.6.3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/crystal/rosidl_actions/0.6.3-0.tar.gz";
    name = "0.6.3-0.tar.gz";
    sha256 = "f79319429937ec9389ab706816c9e04dbbbb1903073b76317f97be19a61fd4b7";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common pythonPackages.pytest ];
  propagatedBuildInputs = [ rosidl-parser ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Converts action files into message and service files.'';
    license = with lib.licenses; [ asl20 ];
  };
}
