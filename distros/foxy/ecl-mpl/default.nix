
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ecl-build, ecl-license }:
buildRosPackage {
  pname = "ros-foxy-ecl-mpl";
  version = "1.0.8-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/foxy/ecl_mpl/1.0.8-1.tar.gz";
    name = "1.0.8-1.tar.gz";
    sha256 = "f6098672bebf9b5b8fc3e9dea68f1d72faa5bb7212fd79310f2e3f843da394fd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ecl-build ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ecl-license ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Metaprogramming tools move alot of runtime calculations to be shifted to
    compile time. This has only very elementary structures at this stage.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
