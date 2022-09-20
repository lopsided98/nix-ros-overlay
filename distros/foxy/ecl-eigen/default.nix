
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, eigen }:
buildRosPackage {
  pname = "ros-foxy-ecl-eigen";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/foxy/ecl_eigen/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "960edf2adc81126db762501aaf7f1f8441901d89f66cefe45deeb745caa6c5f3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  propagatedBuildInputs = [ eigen ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''This provides an Eigen implementation for ecl's linear algebra.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
