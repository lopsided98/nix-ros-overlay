
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-msgs, geometry-msgs, nav-msgs, pythonPackages, rospy, std-msgs, uuv-control-msgs, uuv-gazebo-ros-plugins-msgs, uuv-trajectory-control, uuv-world-ros-plugins-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-uuv-control-utils";
  version = "0.6.13";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "uuvsimulator";
        repo = "uuv_simulator-release";
        rev = "release/melodic/uuv_control_utils/0.6.13-0";
        sha256 = "sha256-r7Ia+Du5nQrEtLF9D89K7LhbarorvcLd7d3vgAsgQTU=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ gazebo-msgs geometry-msgs nav-msgs pythonPackages.numpy pythonPackages.pyyaml rospy std-msgs uuv-control-msgs uuv-gazebo-ros-plugins-msgs uuv-trajectory-control uuv-world-ros-plugins-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The uuv_control_utils package'';
    license = with lib.licenses; [ asl20 ];
  };
}
