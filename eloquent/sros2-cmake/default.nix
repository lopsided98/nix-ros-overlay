
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-common, ament-cmake, sros2, ament-cmake-test, ros2cli, ament-lint-auto }:
buildRosPackage {
  pname = "ros-eloquent-sros2-cmake";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sros2-release/archive/release/eloquent/sros2_cmake/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "200e5f0b960bd1ee7457e92dc6ad50d24553d28d0aed39c2961ebb38d0967ef8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-test ];
  checkInputs = [ ament-lint-common ament-lint-auto ];
  propagatedBuildInputs = [ ros2cli sros2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Cmake macros to configure security for nodes'';
    license = with lib.licenses; [ asl20 ];
  };
}
