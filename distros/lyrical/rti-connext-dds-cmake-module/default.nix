
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-lyrical-rti-connext-dds-cmake-module";
  version = "1.2.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_connextdds-release/archive/release/lyrical/rti_connext_dds_cmake_module/1.2.6-1.tar.gz";
    name = "1.2.6-1.tar.gz";
    sha256 = "82808223f7a6246a75629b8e4eb570da7d8c115f095575d085a04788c67682c9";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Helper module to provide access to RTI products like Connext DDS Professional";
    license = with lib.licenses; [ asl20 ];
  };
}
