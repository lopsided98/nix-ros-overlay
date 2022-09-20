
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-lint-auto, ament-lint-common, apex-test-tools, foonathan-memory-vendor }:
buildRosPackage {
  pname = "ros-galactic-apex-containers";
  version = "0.0.4-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/apex_containers-release/archive/release/galactic/apex_containers/0.0.4-2.tar.gz";
    name = "0.0.4-2.tar.gz";
    sha256 = "da5a6abb1a29ed75b570fe256d93b926988c53207ef31225cde6747248f28ef9";
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
