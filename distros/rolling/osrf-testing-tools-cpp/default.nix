
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-rolling-osrf-testing-tools-cpp";
  version = "2.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/osrf_testing_tools_cpp-release/archive/release/rolling/osrf_testing_tools_cpp/2.0.0-2.tar.gz";
    name = "2.0.0-2.tar.gz";
    sha256 = "148f40e7b9ebc34119caab313bb828aec30a098553185efe6b1ca1504a954053";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Testing tools for C++, and is used in various OSRF projects.";
    license = with lib.licenses; [ asl20 ];
  };
}
