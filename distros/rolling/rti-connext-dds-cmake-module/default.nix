
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-rolling-rti-connext-dds-cmake-module";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_connextdds-release/archive/release/rolling/rti_connext_dds_cmake_module/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "81c03666d95e3f92653fde050d5f14955089826d4ae6bd099add1eeb36b9f1e1";
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
