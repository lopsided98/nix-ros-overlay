
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, moveit-resources-prbt-ikfast-manipulator-plugin, moveit-resources-prbt-moveit-config, moveit-resources-prbt-support, xacro }:
buildRosPackage {
  pname = "ros-lyrical-moveit-resources-prbt-pg70-support";
  version = "2.14.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/lyrical/moveit_resources_prbt_pg70_support/2.14.1-3.tar.gz";
    name = "2.14.1-3.tar.gz";
    sha256 = "2bc632cd9183ae013f82f11a9ee42b6e8d54788966dfb1f82fa1b5b0715ee28a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ moveit-resources-prbt-ikfast-manipulator-plugin moveit-resources-prbt-moveit-config moveit-resources-prbt-support xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "PRBT support for Schunk pg70 gripper.";
    license = with lib.licenses; [ asl20 ];
  };
}
