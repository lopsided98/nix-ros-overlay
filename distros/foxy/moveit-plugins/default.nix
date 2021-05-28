
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, moveit-fake-controller-manager, moveit-simple-controller-manager }:
buildRosPackage {
  pname = "ros-foxy-moveit-plugins";
  version = "2.1.3-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit2-release/archive/release/foxy/moveit_plugins/2.1.3-1.tar.gz";
    name = "2.1.3-1.tar.gz";
    sha256 = "a4c8f9e773569aaeee597c04b278b1e238e912c5daf1f74acdc900d2ad3aa816";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ moveit-fake-controller-manager moveit-simple-controller-manager ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Metapackage for MoveIt plugins.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
