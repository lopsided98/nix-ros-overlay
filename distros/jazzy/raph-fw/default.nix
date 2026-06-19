
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-lint-cmake, ament-index-python, ament-lint-auto, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-raph-fw";
  version = "1.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/raph_robot-release/archive/release/jazzy/raph_fw/1.1.2-1.tar.gz";
    name = "1.1.2-1.tar.gz";
    sha256 = "c141b3df531fb154f1ffad34dccba9fb3578684513236c4b1edb2074e1e68553";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-lint-auto ];
  propagatedBuildInputs = [ ament-index-python python3Packages.rich python3Packages.zeroconf ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Binary releases of the RaphCore firmware and related utilities";
    license = with lib.licenses; [ mit ];
  };
}
