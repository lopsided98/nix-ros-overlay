
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sros2, ament-cmake-test, ament-cmake-lint-cmake, cmake, ros2cli }:
buildRosPackage {
  pname = "ros-crystal-sros2-cmake";
  version = "0.6.3";

  src = fetchurl {
    url = https://github.com/ros2-gbp/sros2-release/archive/release/crystal/sros2_cmake/0.6.3-0.tar.gz;
    sha256 = "80042b41404ecbb8cc07a61aa45b2b93fb2c15adfb8e6043fb1e5ef662d4fd7a";
  };

  buildInputs = [ ament-cmake-test sros2 ros2cli ];
  checkInputs = [ ament-cmake-lint-cmake ];
  propagatedBuildInputs = [ sros2 ros2cli ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Cmake macros to configure security for nodes'';
    license = with lib.licenses; [ asl20 ];
  };
}
