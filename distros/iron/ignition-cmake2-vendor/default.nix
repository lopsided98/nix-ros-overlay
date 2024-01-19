
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-xmllint, cmake, doxygen, git, ignition }:
buildRosPackage {
  pname = "ros-iron-ignition-cmake2-vendor";
  version = "0.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gz_cmake2_vendor-release/archive/release/iron/ignition_cmake2_vendor/0.1.0-2.tar.gz";
    name = "0.1.0-2.tar.gz";
    sha256 = "801373a106c91a9a19e98ef89f3a8d1f2e661393a318c4247ca27eb5b24c1e55";
  };

  buildType = "cmake";
  buildInputs = [ ament-cmake-test cmake doxygen git ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-xmllint ];
  propagatedBuildInputs = [ ignition.cmake2 ];
  nativeBuildInputs = [ ament-cmake-test cmake doxygen git ];

  meta = {
    description = ''This package provides the Ignition CMake 2.x library.'';
    license = with lib.licenses; [ asl20 ];
  };
}
