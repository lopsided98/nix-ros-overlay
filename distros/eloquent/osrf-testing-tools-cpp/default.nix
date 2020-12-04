
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-eloquent-osrf-testing-tools-cpp";
  version = "1.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/osrf_testings_tools_cpp-release/archive/release/eloquent/osrf_testing_tools_cpp/1.2.2-1.tar.gz";
    name = "1.2.2-1.tar.gz";
    sha256 = "3e281da144e292afee15fdcd4b85780ed0ae047129c16bb4c7147856961a3260";
  };

  buildType = "cmake";
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Testing tools for C++, and is used in various OSRF projects.'';
    license = with lib.licenses; [ asl20 ];
  };
}
