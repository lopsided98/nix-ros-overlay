
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, desktop, perception, ros-ign-gazebo-demos, simulation }:
buildRosPackage {
  pname = "ros-humble-desktop-full";
  version = "0.10.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros2-gbp";
        repo = "variants-release";
        rev = "release/humble/desktop_full/0.10.0-1";
        sha256 = "sha256-Fpf8KQVw8ZcNqmf/8VyrlxunQpvxC9fZZHZVUBkM4IU=";
      };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ desktop perception ros-ign-gazebo-demos simulation ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Provides a &quot;batteries included&quot; experience to novice users.'';
    license = with lib.licenses; [ asl20 ];
  };
}
