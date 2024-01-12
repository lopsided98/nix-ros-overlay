
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-lint-auto, ament-lint-common, apex-test-tools, foonathan-memory-vendor }:
buildRosPackage {
  pname = "ros-humble-apex-containers";
  version = "0.0.4-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/apex_containers-release/archive/release/humble/apex_containers/0.0.4-3.tar.gz";
    name = "0.0.4-3.tar.gz";
    sha256 = "0dde2cc8bd79885d0dbe12d4938ae6c660aae2b9deaec525fe06861ba0574729";
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
