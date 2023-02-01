
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, controller-interface, controller-manager, diff-drive-controller, geometry-msgs, hardware-interface, nav-msgs, pluginlib, realtime-tools, roscpp, rostest, rosunit, std-msgs, std-srvs, tf, urdf, xacro }:
buildRosPackage {
  pname = "ros-melodic-ackermann-steering-controller";
  version = "0.17.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "ros_controllers-release";
        rev = "release/melodic/ackermann_steering_controller/0.17.2-1";
        sha256 = "sha256-jUL+gwu9iYVkNWKMXaI3E5rVWo1CjcGAoe3QenJ8u5c=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ controller-manager geometry-msgs rostest rosunit std-msgs std-srvs xacro ];
  propagatedBuildInputs = [ boost controller-interface diff-drive-controller hardware-interface nav-msgs pluginlib realtime-tools roscpp tf urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Controller for a steer drive mobile base.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
