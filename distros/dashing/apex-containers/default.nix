
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-lint-auto, ament-lint-common, foonathan-memory-vendor, osrf-testing-tools-cpp }:
buildRosPackage {
  pname = "ros-dashing-apex-containers";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://gitlab.com/ApexAI/apex_containers-release/repository/archive.tar.gz?ref=release/dashing/apex_containers/0.0.1-1";
    name = "archive.tar.gz";
    sha256 = "d1f23e197e82dc94aa7f34d45420363e507338ddf6bc5a86b3ddbaf40f849a3e";
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
