
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp-components, rcss3d-agent }:
buildRosPackage {
  pname = "ros-humble-rcss3d-agent-basic";
  version = "0.2.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros2-gbp";
        repo = "rcss3d_agent-release";
        rev = "release/humble/rcss3d_agent_basic/0.2.1-1";
        sha256 = "sha256-BWSFd0km6o2WrL4OwfQruwDECCwGlajyEndSfFpkAtQ=";
      };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp-components rcss3d-agent ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Basic rcss3d agent node that uses rcss3d_agent_msgs'';
    license = with lib.licenses; [ asl20 ];
  };
}
