
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-tl-expected";
  version = "1.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cpp_polyfills-release/archive/release/jazzy/tl_expected/1.3.2-1.tar.gz";
    name = "1.3.2-1.tar.gz";
    sha256 = "69ebfa5e7e84b6a65e65cdd3f8f302b7e4df38db9db6ca555fba479c2a5d1020";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "C++11/14/17 std::expected with functional-style extensions";
    license = with lib.licenses; [ cc0 ];
  };
}
