
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-python, ament-lint-auto, ament-lint-common, joint-state-publisher-gui, launch, launch-ros, robot-state-publisher, xacro }:
buildRosPackage {
  pname = "ros-foxy-dsr-description2";
  version = "0.1.1-r4";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "doosan-robotics";
        repo = "doosan-robot2-release";
        rev = "release/foxy/dsr_description2/0.1.1-4";
        sha256 = "sha256-Uzofn4VletQuTxBOe1h3uwsJDvc2uq7Gj5CzmancL8Y=";
      };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-python joint-state-publisher-gui launch launch-ros robot-state-publisher xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''dsr_description2'';
    license = with lib.licenses; [ asl20 ];
  };
}
