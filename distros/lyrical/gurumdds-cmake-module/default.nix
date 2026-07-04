
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_gurumdds-3, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-lyrical-gurumdds-cmake-module";
  version = "7.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_gurumdds-release/archive/release/lyrical/gurumdds_cmake_module/7.0.0-1.tar.gz";
    name = "7.0.0-1.tar.gz";
    sha256 = "dfa16ab5d125e481e87fa1f18cf64a7915ed67be562660d4ab6bbe35dfb09a38";
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
