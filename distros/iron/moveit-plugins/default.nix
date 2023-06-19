
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, moveit-simple-controller-manager }:
buildRosPackage {
  pname = "ros-iron-moveit-plugins";
  version = "2.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/iron/moveit_plugins/2.7.4-1.tar.gz";
    name = "2.7.4-1.tar.gz";
    sha256 = "0a2ed4ba372291a9762ddc2a04dc122fa1f3ecd78b7bb7344da3846ea8db625f";
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
