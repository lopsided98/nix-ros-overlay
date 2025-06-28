
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, moveit-resources-prbt-ikfast-manipulator-plugin, moveit-resources-prbt-moveit-config, moveit-resources-prbt-support, xacro }:
buildRosPackage {
  pname = "ros-kilted-moveit-resources-prbt-pg70-support";
  version = "2.13.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/kilted/moveit_resources_prbt_pg70_support/2.13.2-2.tar.gz";
    name = "2.13.2-2.tar.gz";
    sha256 = "a52bdc5352a7e4ed8b010cfd3027d103b55b04eb6159b3a3e285fba42469d514";
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
