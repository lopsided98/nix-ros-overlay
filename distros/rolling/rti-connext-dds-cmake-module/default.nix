
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-rolling-rti-connext-dds-cmake-module";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_connextdds-release/archive/release/rolling/rti_connext_dds_cmake_module/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "eda1fa4e2d7be099bfe764ab32ba017237556560dd1ac8b008ba2bf0936b5aa1";
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
