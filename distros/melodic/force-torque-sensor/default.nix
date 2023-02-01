
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, dynamic-reconfigure, geometry-msgs, hardware-interface, iirob-filters, message-runtime, pluginlib, realtime-tools, roscpp, rosparam-handler, rospy, std-msgs, std-srvs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-force-torque-sensor";
  version = "1.0.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "KITrobotics";
        repo = "force_torque_sensor-release";
        rev = "release/melodic/force_torque_sensor/1.0.0-1";
        sha256 = "sha256-FKNgFAQNtPEb/dMBLvfge0hFGHDOhhly31Cp7n3UAwo=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cmake-modules dynamic-reconfigure geometry-msgs hardware-interface iirob-filters message-runtime pluginlib realtime-tools roscpp rosparam-handler rospy std-msgs std-srvs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The force_torque_sensor package'';
    license = with lib.licenses; [ lgpl3Only ];
  };
}
