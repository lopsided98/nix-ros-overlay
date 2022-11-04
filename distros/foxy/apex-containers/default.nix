
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-lint-auto, ament-lint-common, apex-test-tools, foonathan-memory-vendor }:
buildRosPackage {
  pname = "ros-foxy-apex-containers";
  version = "0.0.3-r1";

  src = fetchurl {
    url = "https://gitlab.com/ApexAI/apex_containers-release/-/archive/release/foxy/apex_containers/0.0.3-1/archive.tar.gz";
    name = "archive.tar.gz";
    sha256 = "32ed55b4adff00c9f65f3ab34c1cfaea899ade1d73963b41edeb33a2dee445aa";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common apex-test-tools ];
  propagatedBuildInputs = [ foonathan-memory-vendor ];
  nativeBuildInputs = [ ament-cmake ament-cmake-auto ];

  meta = {
    description = ''Containers'';
    license = with lib.licenses; [ asl20 ];
  };
}
