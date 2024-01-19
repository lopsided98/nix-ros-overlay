
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, xacro }:
buildRosPackage {
  pname = "ros-humble-pal-robotiq-description";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pal_robotiq_gripper-release/archive/release/humble/pal_robotiq_description/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "8062ce48fe4f9dc24d816ea40ebdb5dc37b46e8828da94da1ec33d803f42e5ae";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''The pal_robotiq_description package'';
    license = with lib.licenses; [ asl20 ];
  };
}
