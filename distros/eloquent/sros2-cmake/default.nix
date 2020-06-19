
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-test, ament-lint-auto, ament-lint-common, ros2cli, sros2 }:
buildRosPackage {
  pname = "ros-eloquent-sros2-cmake";
  version = "0.8.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sros2-release/archive/release/eloquent/sros2_cmake/0.8.2-1.tar.gz";
    name = "0.8.2-1.tar.gz";
    sha256 = "5bfc16a8300023d607b648d29c7b8eb2c81cab27bb6edcdff7f761ecd3dd6510";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-test ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ros2cli sros2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''CMake macros to configure security for nodes'';
    license = with lib.licenses; [ asl20 ];
  };
}
