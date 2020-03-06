
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-lint-auto, ament-lint-common, foonathan-memory-vendor, osrf-testing-tools-cpp }:
buildRosPackage {
  pname = "ros-eloquent-apex-containers";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://gitlab.com/ApexAI/apex_containers-release/repository/archive.tar.gz?ref=release/eloquent/apex_containers/0.0.2-1";
    name = "archive.tar.gz";
    sha256 = "dde6cef9b9057ce4fb70644b0ee5ec5bda517de00ec9d4f27cd496527de17a76";
  };

  buildType = "ament_cmake";
  buildInputs = [ osrf-testing-tools-cpp ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ foonathan-memory-vendor ];
  nativeBuildInputs = [ ament-cmake ament-cmake-auto ];

  meta = {
    description = ''Containers'';
    license = with lib.licenses; [ asl20 ];
  };
}
