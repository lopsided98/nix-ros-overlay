
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, pythonPackages }:
buildRosPackage {
  pname = "ros-rolling-pybind11-vendor";
  version = "3.1.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pybind11_vendor-release/archive/release/rolling/pybind11_vendor/3.1.1-2.tar.gz";
    name = "3.1.1-2.tar.gz";
    sha256 = "eb8ca8b64a179bbf5082972e4d0d19c9978420e29d02a59c8f9db5ab10b19d32";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-vendor-package ];
  propagatedBuildInputs = [ pythonPackages.pybind11 ];
  nativeBuildInputs = [ ament-cmake ament-cmake-vendor-package ];

  meta = {
    description = ''Wrapper around pybind11.'';
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
