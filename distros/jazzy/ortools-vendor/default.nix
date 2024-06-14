
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, ament-cmake-xmllint, ament-lint-auto, git }:
buildRosPackage {
  pname = "ros-jazzy-ortools-vendor";
  version = "9.9.0-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ortools_vendor-release/archive/release/jazzy/ortools_vendor/9.9.0-6.tar.gz";
    name = "9.9.0-6.tar.gz";
    sha256 = "82bf4e4f1f8f867dbc29ebca2a9e397cef46d571c4bf6c60ab064ad2df86bac4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-vendor-package git ];
  checkInputs = [ ament-cmake-xmllint ament-lint-auto ];
  nativeBuildInputs = [ ament-cmake ament-cmake-vendor-package git ];

  meta = {
    description = "Wrapper around ortools, it provides a fixed CMake module and an ExternalProject build of it.";
    license = with lib.licenses; [ asl20 ];
  };
}
