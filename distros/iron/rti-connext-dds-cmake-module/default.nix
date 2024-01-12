
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-iron-rti-connext-dds-cmake-module";
  version = "0.14.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_connextdds-release/archive/release/iron/rti_connext_dds_cmake_module/0.14.1-1.tar.gz";
    name = "0.14.1-1.tar.gz";
    sha256 = "6a791c1e739329681605006dc8b24ed5e737f031032686434134be6e68efedf2";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Helper module to provide access to RTI products like Connext DDS Professional'';
    license = with lib.licenses; [ asl20 ];
  };
}
