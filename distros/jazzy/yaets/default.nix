
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, python-cmake-module }:
buildRosPackage {
  pname = "ros-jazzy-yaets";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/fmrico/yaets-release/archive/release/jazzy/yaets/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "f3043cfbed58156d6f2c89a153e4aefacd46c3ed9d997b96e9821b6166a04ed2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake python-cmake-module ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ python-cmake-module ];

  meta = {
    description = "This package provides a execution tracing library.";
    license = with lib.licenses; [ asl20 ];
  };
}
