
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_gurumdds-3, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-humble-gurumdds-cmake-module";
  version = "3.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_gurumdds-release/archive/release/humble/gurumdds_cmake_module/3.4.2-1.tar.gz";
    name = "3.4.2-1.tar.gz";
    sha256 = "fa5eea480604e0832b7a2aa8df9a67d6882721f5419ea75575acc3c213fbc627";
  };

  buildType = "ament_cmake";
  buildInputs = [ _unresolved_gurumdds-3.0 ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Provide CMake module to find GurumNetworks GurumDDS.";
    license = with lib.licenses; [ asl20 ];
  };
}
