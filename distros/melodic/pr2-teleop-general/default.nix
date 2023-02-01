
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, angles, catkin, geometry-msgs, moveit-msgs, polled-camera, pr2-arm-kinematics, pr2-common-action-msgs, pr2-controller-manager, pr2-controllers-msgs, pr2-mannequin-mode, pr2-mechanism-msgs, pr2-msgs, pr2-tuck-arms-action, ps3joy, roscpp, sensor-msgs, tf, urdf }:
buildRosPackage {
  pname = "ros-melodic-pr2-teleop-general";
  version = "0.6.1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "pr2-gbp";
        repo = "pr2_apps-release";
        rev = "release/melodic/pr2_teleop_general/0.6.1-0";
        sha256 = "sha256-kFE3Kg5Z0lHfnY8h7gEvEC27xFQ0Wq6gS/24/9PFpSU=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib actionlib-msgs angles geometry-msgs moveit-msgs polled-camera pr2-arm-kinematics pr2-common-action-msgs pr2-controller-manager pr2-controllers-msgs pr2-mannequin-mode pr2-mechanism-msgs pr2-msgs pr2-tuck-arms-action ps3joy roscpp sensor-msgs tf urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''pr2_teleop_general'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
