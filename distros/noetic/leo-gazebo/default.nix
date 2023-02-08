
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, compressed-image-transport, controller-manager, diff-drive-controller, gazebo-plugins, gazebo-ros, gazebo-ros-control, geometry-msgs, joint-state-controller, leo-description, leo-gazebo-plugins, leo-gazebo-worlds, nav-msgs, robot-state-publisher, topic-tools }:
buildRosPackage {
  pname = "ros-noetic-leo-gazebo";
  version = "1.1.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "fictionlab-gbp";
        repo = "leo_simulator-release";
        rev = "release/noetic/leo_gazebo/1.1.0-1";
        sha256 = "sha256-pr23p7Dz1SI8hVz1u8OWbhDHOUl0bK+YaY6TtN8JWCY=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ compressed-image-transport controller-manager diff-drive-controller gazebo-plugins gazebo-ros gazebo-ros-control geometry-msgs joint-state-controller leo-description leo-gazebo-plugins leo-gazebo-worlds nav-msgs robot-state-publisher topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch files and other resources for simulating Leo Rover in Gazebo.'';
    license = with lib.licenses; [ mit ];
  };
}
