
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-lint-auto, ament-lint-common, apex-test-tools, foonathan-memory-vendor }:
buildRosPackage {
  pname = "ros-foxy-apex-containers";
  version = "0.0.3-r1";

  src = fetchurl {
    url = "https://gitlab.com/ApexAI/apex_containers-release/-/archive/release/foxy/apex_containers/0.0.3-1/apex_containers-release-release-foxy-apex_containers-0.0.3-1.tar.gz";
    name = "apex_containers-release-release-foxy-apex_containers-0.0.3-1.tar.gz";
    sha256 = "4770a7df0dd7e9026017d7b491aef0a7edcaeaf62ebfb84fc461a40bc88e3560";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common apex-test-tools ];
  propagatedBuildInputs = [ foonathan-memory-vendor ];
  nativeBuildInputs = [ ament-cmake ament-cmake-auto ];

  meta = {
    description = ''Containers'';
    license = with lib.licenses; [ asl20 ];
  };
}
