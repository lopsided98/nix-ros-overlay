
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-lint-cmake, ament-index-python, ament-lint-auto, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-raph-fw";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/raph_robot-release/archive/release/jazzy/raph_fw/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "1b6a19f3ec1bbde41efc3a31590aef82cf20a309939ad54cf4261903726c924e";
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
