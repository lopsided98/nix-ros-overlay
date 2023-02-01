
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-dev, geometry-msgs, roscpp, rostest, rosunit, sensor-msgs, std-msgs, tf2, tf2-ros, uuv-gazebo-plugins, uuv-gazebo-ros-plugins-msgs, visualization-msgs, xacro }:
buildRosPackage {
  pname = "ros-melodic-uuv-gazebo-ros-plugins";
  version = "0.6.13";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "uuvsimulator";
        repo = "uuv_simulator-release";
        rev = "release/melodic/uuv_gazebo_ros_plugins/0.6.13-0";
        sha256 = "sha256-zjDY5gS7Cgmze7bGRUlpywyPO98QRfyA7o4VzWAkI4E=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rostest rosunit xacro ];
  propagatedBuildInputs = [ gazebo-dev geometry-msgs roscpp sensor-msgs std-msgs tf2 tf2-ros uuv-gazebo-plugins uuv-gazebo-ros-plugins-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''UUV Simulator's extended ROS plugins for generation of the necessary
      ROS services and topics during the simulation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
