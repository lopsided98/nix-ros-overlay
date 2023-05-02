
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-lint-auto, ament-lint-common, apex-test-tools, foonathan-memory-vendor }:
buildRosPackage {
  pname = "ros-rolling-apex-containers";
  version = "0.0.4-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/apex_containers-release/archive/release/rolling/apex_containers/0.0.4-4.tar.gz";
    name = "0.0.4-4.tar.gz";
    sha256 = "b04903264e0e077bb329ceb506b5ce349a59310a608b0d181358f2bc0914b1bb";
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
