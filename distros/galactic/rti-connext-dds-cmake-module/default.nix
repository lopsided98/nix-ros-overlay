
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-galactic-rti-connext-dds-cmake-module";
  version = "0.6.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_connextdds-release/archive/release/galactic/rti_connext_dds_cmake_module/0.6.2-1.tar.gz";
    name = "0.6.2-1.tar.gz";
    sha256 = "42a57326c1aa23a3ee53886c528347c68af1612970b0cb11e10807bfa5c9a975";
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
