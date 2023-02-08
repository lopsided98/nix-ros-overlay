
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, irobot-create-ignition-bringup, irobot-create-ignition-plugins, irobot-create-ignition-toolbox }:
buildRosPackage {
  pname = "ros-humble-irobot-create-ignition-sim";
  version = "2.0.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros2-gbp";
        repo = "create3_sim-release";
        rev = "release/humble/irobot_create_ignition_sim/2.0.0-1";
        sha256 = "sha256-C10ai8XZDnxw2BZcvof/U3M2rgHBRUwLZW3usOly47Q=";
      };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ irobot-create-ignition-bringup irobot-create-ignition-plugins irobot-create-ignition-toolbox ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Metapackage for the iRobot(R) Create(R) 3 robot Ignition simulator'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
