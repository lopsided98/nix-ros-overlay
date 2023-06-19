
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, moveit-simple-controller-manager }:
buildRosPackage {
  pname = "ros-rolling-moveit-plugins";
  version = "2.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/rolling/moveit_plugins/2.7.4-1.tar.gz";
    name = "2.7.4-1.tar.gz";
    sha256 = "e58c0a6ff23bb4050d455741c6421c2ae217d56f124668fe0b1f68ff5a48da5c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ moveit-simple-controller-manager ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Metapackage for MoveIt plugins.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
