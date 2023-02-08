
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, rmf-demos-dashboard-resources, rmf-fleet-msgs, rmf-task-msgs }:
buildRosPackage {
  pname = "ros-foxy-rmf-demos-panel";
  version = "1.3.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros2-gbp";
        repo = "rmf_demos-release";
        rev = "release/foxy/rmf_demos_panel/1.3.2-1";
        sha256 = "sha256-faMjYyBhbikgtOXeBgiS5War0yzf9guVNDP6O+xn/Vk=";
      };

  buildType = "ament_python";
  propagatedBuildInputs = [ python3Packages.flask python3Packages.flask-cors rmf-demos-dashboard-resources rmf-fleet-msgs rmf-task-msgs ];

  meta = {
    description = ''Web based RMF Demo Panel'';
    license = with lib.licenses; [ asl20 ];
  };
}
