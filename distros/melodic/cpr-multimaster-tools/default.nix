
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, clock-relay, message-relay, multimaster-launch, multimaster-msgs, tf2-relay }:
buildRosPackage {
  pname = "ros-melodic-cpr-multimaster-tools";
  version = "0.0.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "clearpath-gbp";
        repo = "cpr_multimaster_tools-release";
        rev = "release/melodic/cpr_multimaster_tools/0.0.2-1";
        sha256 = "sha256-tqoHmf226UwnOMlPnqGGn9wLMFN19TcuY9zS7nvM5CQ=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ clock-relay message-relay multimaster-launch multimaster-msgs tf2-relay ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Multi-master tools for configuration and message relaying'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
