
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-lint-auto, ament-lint-common, foonathan-memory-vendor, osrf-testing-tools-cpp }:
buildRosPackage {
  pname = "ros-dashing-apex-containers";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://gitlab.com/ApexAI/apex_containers-release/repository/archive.tar.gz?ref=release/dashing/apex_containers/0.0.2-1";
    name = "archive.tar.gz";
    sha256 = "6f1f26ef62b25cd375d5b84bbd2cfaa4a4357d53a2e807b0e8202bc99b3f34d4";
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
