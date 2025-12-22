
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_gurumdds-3, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-kilted-gurumdds-cmake-module";
  version = "6.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_gurumdds-release/archive/release/kilted/gurumdds_cmake_module/6.0.1-1.tar.gz";
    name = "6.0.1-1.tar.gz";
    sha256 = "7077b481a919b547dfc6427e9f72ca1a824b73961ea8c4ec692c122ef4f4accf";
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
