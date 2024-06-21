
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, joint-state-publisher, moveit-resources-fanuc-description, robot-state-publisher, tf2-ros, xacro }:
buildRosPackage {
  pname = "ros-jazzy-moveit-resources-fanuc-moveit-config";
  version = "3.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit_resources-release/archive/release/jazzy/moveit_resources_fanuc_moveit_config/3.0.0-3.tar.gz";
    name = "3.0.0-3.tar.gz";
    sha256 = "64ad388a8381f898a74bfea4d0fb0be857f36999b6c9511aca21e2b30461c31a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ joint-state-publisher moveit-resources-fanuc-description robot-state-publisher tf2-ros xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "<p>
      MoveIt Resources for testing: Fanuc M-10iA.
    </p>
    <p>
      A project-internal configuration for testing in MoveIt.
    </p>";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
