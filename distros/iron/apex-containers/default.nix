
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-lint-auto, ament-lint-common, apex-test-tools, foonathan-memory-vendor }:
buildRosPackage {
  pname = "ros-iron-apex-containers";
  version = "0.0.4-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/apex_containers-release/archive/release/iron/apex_containers/0.0.4-5.tar.gz";
    name = "0.0.4-5.tar.gz";
    sha256 = "9b3015ba50b3e73c6ac46bebeae25189f8cb936e1876787ec83cc57b03f1e3b1";
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
