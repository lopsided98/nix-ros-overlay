
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, joint-state-publisher, message-generation, message-runtime, pythonPackages, robot-state-publisher, rospy, rostest, rosunit, std-msgs, tf, uuv-assistants, uuv-gazebo-ros-plugins-msgs, xacro }:
buildRosPackage {
  pname = "ros-melodic-uuv-thruster-manager";
  version = "0.6.13";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "uuvsimulator";
        repo = "uuv_simulator-release";
        rev = "release/melodic/uuv_thruster_manager/0.6.13-0";
        sha256 = "sha256-HSNR5X+O8JY5IoOHTHH8kUQeg8n4uYcP1Tv1X/mwodw=";
      };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  checkInputs = [ geometry-msgs joint-state-publisher pythonPackages.numpy robot-state-publisher rostest rosunit uuv-assistants xacro ];
  propagatedBuildInputs = [ geometry-msgs message-runtime pythonPackages.pyyaml rospy std-msgs tf uuv-assistants uuv-gazebo-ros-plugins-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The thruster manager package'';
    license = with lib.licenses; [ asl20 ];
  };
}
