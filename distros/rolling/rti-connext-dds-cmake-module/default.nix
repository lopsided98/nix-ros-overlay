
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-rolling-rti-connext-dds-cmake-module";
  version = "0.20.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_connextdds-release/archive/release/rolling/rti_connext_dds_cmake_module/0.20.0-2.tar.gz";
    name = "0.20.0-2.tar.gz";
    sha256 = "f27a90c33621f0562db8e5dac26bbb8e7537bb17c263ab96e6beb273c7e7441f";
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
