
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, joy, joy-teleop, pythonPackages, rospy, sensor-msgs, std-msgs, tf, uuv-gazebo-ros-plugins-msgs, uuv-thruster-manager }:
buildRosPackage {
  pname = "ros-melodic-uuv-teleop";
  version = "0.6.13";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "uuvsimulator";
        repo = "uuv_simulator-release";
        rev = "release/melodic/uuv_teleop/0.6.13-0";
        sha256 = "sha256-yetX/cITyYx1GGFo57Bkz+oo0OWMPz39JqW9gEInR5w=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs joy joy-teleop pythonPackages.numpy rospy sensor-msgs std-msgs tf uuv-gazebo-ros-plugins-msgs uuv-thruster-manager ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS nodes to generate command topics for vehicles and manipulators using a joystick input'';
    license = with lib.licenses; [ asl20 ];
  };
}
