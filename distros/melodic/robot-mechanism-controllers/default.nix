
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, angles, catkin, control-msgs, control-toolbox, diagnostic-msgs, eigen-conversions, filters, geometry-msgs, kdl-parser, libtool, message-filters, message-generation, message-runtime, pluginlib, pr2-controller-interface, pr2-controller-manager, pr2-controllers-msgs, pr2-mechanism-model, realtime-tools, roscpp, rospy, std-msgs, tf, tf-conversions, trajectory-msgs }:
buildRosPackage {
  pname = "ros-melodic-robot-mechanism-controllers";
  version = "1.10.17-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "pr2-gbp";
        repo = "pr2_controllers-release";
        rev = "release/melodic/robot_mechanism_controllers/1.10.17-1";
        sha256 = "sha256-bOUk6B3oa0q9t5tO9LLQlV46xj5BHRnPWS+nxAk3TIs=";
      };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ actionlib angles control-msgs control-toolbox diagnostic-msgs eigen-conversions filters geometry-msgs kdl-parser libtool message-filters message-runtime pluginlib pr2-controller-interface pr2-controller-manager pr2-controllers-msgs pr2-mechanism-model realtime-tools roscpp rospy std-msgs tf tf-conversions trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Generic Mechanism Controller Library'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
