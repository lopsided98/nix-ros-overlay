
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, git }:
buildRosPackage {
  pname = "ros-humble-osqp-vendor";
  version = "0.0.4-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/osqp_vendor-release/archive/release/humble/osqp_vendor/0.0.4-3.tar.gz";
    name = "0.0.4-3.tar.gz";
    sha256 = "4eb4363803b35444f1691c6606fb80e8c8925c2f560e149e30f67360b104f3e9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake git ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake git ];

  meta = {
    description = ''Wrapper around osqp that ships with a CMake module'';
    license = with lib.licenses; [ asl20 ];
  };
}
