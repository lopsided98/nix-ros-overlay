
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, ament-cmake, ament-lint-common, pythonPackages, rosidl-parser, ament-lint-auto }:
buildRosPackage {
  pname = "ros-crystal-rosidl-actions";
  version = "0.6.3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/crystal/rosidl_actions/0.6.3-0.tar.gz";
    name = "0.6.3-0.tar.gz";
    sha256 = "f79319429937ec9389ab706816c9e04dbbbb1903073b76317f97be19a61fd4b7";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-parser ];
  checkInputs = [ ament-lint-auto ament-cmake-pytest pythonPackages.pytest ament-lint-common ];
  propagatedBuildInputs = [ rosidl-parser ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Converts action files into message and service files.'';
    license = with lib.licenses; [ asl20 ];
  };
}
