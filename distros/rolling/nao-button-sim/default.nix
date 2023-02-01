
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, nao-sensor-msgs, pythonPackages }:
buildRosPackage {
  pname = "ros-rolling-nao-button-sim";
  version = "0.1.1-r3";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros2-gbp";
        repo = "nao_button_sim-release";
        rev = "release/rolling/nao_button_sim/0.1.1-3";
        sha256 = "sha256-kSAZ/BDlwmj/kpJek7GBfiEO1RBUa8Lmld+ZbxmlAX0=";
      };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ nao-sensor-msgs ];

  meta = {
    description = ''Allows simulating button presses through command line interface'';
    license = with lib.licenses; [ asl20 ];
  };
}
