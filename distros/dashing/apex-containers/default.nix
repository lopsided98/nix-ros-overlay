
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-lint-auto, ament-lint-common, foonathan-memory-vendor, osrf-testing-tools-cpp }:
buildRosPackage {
  pname = "ros-dashing-apex-containers";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://gitlab.com/ApexAI/apex_containers-release/-/archive/release/dashing/apex_containers/0.0.2-1/apex_containers-release-release-dashing-apex_containers-0.0.2-1.tar.gz";
    name = "apex_containers-release-release-dashing-apex_containers-0.0.2-1.tar.gz";
    sha256 = "6c0ea6a94a5ad247477f49c908d524be80873e256c9382e5b3969fc433b6bd9b";
  };

  buildType = "ament_cmake";
  buildInputs = [ osrf-testing-tools-cpp ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ foonathan-memory-vendor ];
  nativeBuildInputs = [ ament-cmake ament-cmake-auto ];

  meta = {
    description = ''Containers'';
    license = with lib.licenses; [ asl20 ];
  };
}
