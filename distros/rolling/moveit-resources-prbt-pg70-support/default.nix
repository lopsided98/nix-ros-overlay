
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, moveit-resources-prbt-ikfast-manipulator-plugin, moveit-resources-prbt-moveit-config, moveit-resources-prbt-support, xacro }:
buildRosPackage {
  pname = "ros-rolling-moveit-resources-prbt-pg70-support";
  version = "2.15.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/rolling/moveit_resources_prbt_pg70_support/2.15.0-1.tar.gz";
    name = "2.15.0-1.tar.gz";
    sha256 = "d11be4a0006d17090e3139e62dbfc84a4c213a3413d30868bded747dc81aec4b";
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
