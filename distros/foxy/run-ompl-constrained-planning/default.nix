
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, controller-manager, moveit-common, moveit-resources-panda-moveit-config, moveit-ros-move-group, moveit-ros-planning-interface, robot-state-publisher, rviz2, tf2-ros, warehouse-ros-mongo }:
buildRosPackage {
  pname = "ros-foxy-run-ompl-constrained-planning";
  version = "2.2.3-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "moveit";
        repo = "moveit2-release";
        rev = "release/foxy/run_ompl_constrained_planning/2.2.3-1";
        sha256 = "sha256-ySjL5k85Nzt5dxp3AiBnbzxJuimB8vvXiY8jxlED09s=";
      };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake moveit-common ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ controller-manager moveit-resources-panda-moveit-config moveit-ros-move-group moveit-ros-planning-interface robot-state-publisher rviz2 tf2-ros warehouse-ros-mongo ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Demo ompl constrained planning capabilities'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
