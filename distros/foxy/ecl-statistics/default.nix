
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ecl-build, ecl-config, ecl-license, ecl-linear-algebra, ecl-mpl, ecl-type-traits }:
buildRosPackage {
  pname = "ros-foxy-ecl-statistics";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/foxy/ecl_statistics/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "16b59215420e2a328f8df5afb24c708d2ab4e73279f31eff6a7e6604b1e84c77";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ecl-build ecl-config ecl-license ecl-linear-algebra ecl-mpl ecl-type-traits ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Common statistical structures and algorithms for control systems.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
