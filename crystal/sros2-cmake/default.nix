
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-lint-cmake, ament-cmake-test, cmake, ros2cli, sros2 }:
buildRosPackage {
  pname = "ros-crystal-sros2-cmake";
  version = "0.6.3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sros2-release/archive/release/crystal/sros2_cmake/0.6.3-0.tar.gz";
    name = "0.6.3-0.tar.gz";
    sha256 = "80042b41404ecbb8cc07a61aa45b2b93fb2c15adfb8e6043fb1e5ef662d4fd7a";
  };

  buildType = "cmake";
  buildInputs = [ ament-cmake-test ];
  checkInputs = [ ament-cmake-lint-cmake ];
  propagatedBuildInputs = [ ros2cli sros2 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Cmake macros to configure security for nodes'';
    license = with lib.licenses; [ asl20 ];
  };
}
