
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_gurumdds-3, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-lyrical-gurumdds-cmake-module";
  version = "7.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_gurumdds-release/archive/release/lyrical/gurumdds_cmake_module/7.0.0-3.tar.gz";
    name = "7.0.0-3.tar.gz";
    sha256 = "560fa9c7bbf00c2681ec8541fdd7b10c7965618c10325096c34b8108453704be";
  };

  buildType = "ament_cmake";
  buildInputs = [ _unresolved_gurumdds-3.2 ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Provide CMake module to find GurumNetworks GurumDDS.";
    license = with lib.licenses; [ asl20 ];
  };
}
