
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-jazzy-rti-connext-dds-cmake-module";
  version = "0.22.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_connextdds-release/archive/release/jazzy/rti_connext_dds_cmake_module/0.22.3-1.tar.gz";
    name = "0.22.3-1.tar.gz";
    sha256 = "70aaf82f5450dc08550fcd75dc281370a6e34f1f9647e4b69e2a21a7cb8c5b72";
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
