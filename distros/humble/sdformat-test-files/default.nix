
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-humble-sdformat-test-files";
  version = "1.0.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros2-gbp";
        repo = "sdformat_urdf-release";
        rev = "release/humble/sdformat_test_files/1.0.1-1";
        sha256 = "sha256-+3nL+Njboe0apHQrf0wM7r53YuOAoG8MjCOOoyhCG1c=";
      };

  buildType = "cmake";
  propagatedBuildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Example SDFormat XML files for testing tools using hthis format.'';
    license = with lib.licenses; [ asl20 ];
  };
}
