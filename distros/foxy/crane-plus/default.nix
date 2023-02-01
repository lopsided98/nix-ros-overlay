
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, crane-plus-control, crane-plus-description, crane-plus-examples, crane-plus-gazebo, crane-plus-ignition, crane-plus-moveit-config }:
buildRosPackage {
  pname = "ros-foxy-crane-plus";
  version = "1.1.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros2-gbp";
        repo = "crane_plus-release";
        rev = "release/foxy/crane_plus/1.1.0-1";
        sha256 = "sha256-VdyaVwQdCQaFTEbjjgYTbq/gdHZc7jaPf4+/C9kJlEM=";
      };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ crane-plus-control crane-plus-description crane-plus-examples crane-plus-gazebo crane-plus-ignition crane-plus-moveit-config ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS 2 package suite of CRANE+ V2'';
    license = with lib.licenses; [ asl20 ];
  };
}
