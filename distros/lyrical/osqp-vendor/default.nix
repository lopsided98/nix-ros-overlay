
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, git, ros-environment }:
buildRosPackage {
  pname = "ros-lyrical-osqp-vendor";
  version = "0.2.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/osqp_vendor-release/archive/release/lyrical/osqp_vendor/0.2.0-5.tar.gz";
    name = "0.2.0-5.tar.gz";
    sha256 = "095d1e370c66f6219abdddc72c4ed011498737facbbc5e8c097beaed887ffc01";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake git ros-environment ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake git ];

  meta = {
    description = "Wrapper around osqp that ships with a CMake module";
    license = with lib.licenses; [ asl20 ];
  };
}
