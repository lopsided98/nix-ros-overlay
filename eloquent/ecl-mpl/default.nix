
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ecl-license, ament-lint-common, ament-lint-auto, ecl-build, ament-cmake-gtest }:
buildRosPackage {
  pname = "ros-eloquent-ecl-mpl";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/eloquent/ecl_mpl/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "b450d99f81a9e3f903019580d20dd241605a4abb186c02fdd51e1e4bb38c067e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ecl-license ecl-build ];
  checkInputs = [ ament-lint-common ament-cmake-gtest ament-lint-auto ];
  propagatedBuildInputs = [ ecl-license ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Metaprogramming tools move alot of runtime calculations to be shifted to
    compile time. This has only very elementary structures at this stage.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
