
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, joint-state-publisher, moveit-resources-fanuc-description, robot-state-publisher, tf2-ros, xacro }:
buildRosPackage {
  pname = "ros-galactic-moveit-resources-fanuc-moveit-config";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit_resources-release/archive/release/galactic/moveit_resources_fanuc_moveit_config/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "28cff3264ed792f0990dca38af9ca6b4fa836e55cb9115f125088e699c492e6e";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ joint-state-publisher moveit-resources-fanuc-description robot-state-publisher tf2-ros xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''<p>
      MoveIt Resources for testing: Fanuc M-10iA.
    </p>
    <p>
      A project-internal configuration for testing in MoveIt.
    </p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
