
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, curl, file, pkg-config }:
buildRosPackage {
  pname = "ros-humble-libcurl-vendor";
  version = "3.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/resource_retriever-release/archive/release/humble/libcurl_vendor/3.1.0-2.tar.gz";
    name = "3.1.0-2.tar.gz";
    sha256 = "f9e630d70bf23cb9d439fc1e4e13585aa2597845db73c2757ca88fd8c9a58dc4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake file ];
  propagatedBuildInputs = [ curl pkg-config ];
  nativeBuildInputs = [ ament-cmake pkg-config ];

  meta = {
    description = ''Wrapper around libcurl, it provides a fixed CMake module and an ExternalProject build of it.'';
    license = with lib.licenses; [ asl20 mit ];
  };
}
