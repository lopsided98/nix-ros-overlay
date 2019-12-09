
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-default-runtime, rosidl-default-generators, ament-lint-common, ament-cmake }:
buildRosPackage {
  pname = "ros-crystal-builtin-interfaces";
  version = "0.6.3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_interfaces-release/archive/release/crystal/builtin_interfaces/0.6.3-0.tar.gz";
    name = "0.6.3-0.tar.gz";
    sha256 = "249ef8ac57b8ee997b7de2d8be13a6c12f2785c7e3440f7f0c9171366b30b74a";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''A package containing builtin message and service definitions.'';
    license = with lib.licenses; [ asl20 ];
  };
}
