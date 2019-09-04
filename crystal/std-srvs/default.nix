
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-default-generators, rosidl-default-runtime, ament-cmake, ament-lint-common }:
buildRosPackage {
  pname = "ros-crystal-std-srvs";
  version = "0.6.1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/common_interfaces-release/archive/release/crystal/std_srvs/0.6.1-0.tar.gz;
    sha256 = "cd76b3e0759a1bca1b6963cbe8e8d6926251eaa2553311d6fe256a3e59a893d8";
  };

  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''A package containing some standard service definitions.'';
    license = with lib.licenses; [ asl20 ];
  };
}
