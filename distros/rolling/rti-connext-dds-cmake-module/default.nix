
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-rolling-rti-connext-dds-cmake-module";
  version = "0.13.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros2-gbp";
        repo = "rmw_connextdds-release";
        rev = "release/rolling/rti_connext_dds_cmake_module/0.13.0-1";
        sha256 = "sha256-571J0ZzgTscO3/qC9SCYh3GCiWNd9iauupnXda6CkB8=";
      };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Helper module to provide access to RTI products like Connext DDS Professional'';
    license = with lib.licenses; [ asl20 ];
  };
}
