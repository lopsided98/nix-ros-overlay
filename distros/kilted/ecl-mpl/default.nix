
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ecl-build, ecl-license }:
buildRosPackage {
  pname = "ros-kilted-ecl-mpl";
  version = "1.2.1-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_core-release/archive/release/kilted/ecl_mpl/1.2.1-5.tar.gz";
    name = "1.2.1-5.tar.gz";
    sha256 = "981d874048f1c4d7143a207fe1e9556c7dc1b6a49b6b43b89e72aaebd7399466";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ecl-build ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ecl-license ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Metaprogramming tools move alot of runtime calculations to be shifted to
    compile time. This has only very elementary structures at this stage.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
