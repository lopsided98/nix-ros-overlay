
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moveit-resources-prbt-ikfast-manipulator-plugin, moveit-resources-prbt-moveit-config, moveit-resources-prbt-support, xacro }:
buildRosPackage {
  pname = "ros-noetic-moveit-resources-prbt-pg70-support";
  version = "0.8.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit_resources-release/archive/release/noetic/moveit_resources_prbt_pg70_support/0.8.2-1.tar.gz";
    name = "0.8.2-1.tar.gz";
    sha256 = "12d22c95034d670242999e2fb67155c8a5fadc627e03003d67e636b92457dbef";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ moveit-resources-prbt-ikfast-manipulator-plugin moveit-resources-prbt-moveit-config moveit-resources-prbt-support xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''PRBT support for Schunk pg70 gripper.'';
    license = with lib.licenses; [ asl20 ];
  };
}
