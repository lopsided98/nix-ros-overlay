
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ur-description, ur-gazebo, ur10-moveit-config, ur10e-moveit-config, ur16e-moveit-config, ur3-moveit-config, ur3e-moveit-config, ur5-moveit-config, ur5e-moveit-config }:
buildRosPackage {
  pname = "ros-melodic-universal-robots";
  version = "1.3.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-industrial-release";
        repo = "universal_robot-release";
        rev = "release/melodic/universal_robots/1.3.1-1";
        sha256 = "sha256-IpROXEJ8yu4Nv8+ARV6bxFwZMcfwK+8bxsMdebHa9DI=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ ur-description ur-gazebo ur10-moveit-config ur10e-moveit-config ur16e-moveit-config ur3-moveit-config ur3e-moveit-config ur5-moveit-config ur5e-moveit-config ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS-Industrial support for Universal Robots manipulators (metapackage).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
