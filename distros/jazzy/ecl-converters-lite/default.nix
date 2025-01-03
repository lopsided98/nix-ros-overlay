
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ecl-config, ecl-license }:
buildRosPackage {
  pname = "ros-jazzy-ecl-converters-lite";
  version = "1.2.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_lite-release/archive/release/jazzy/ecl_converters_lite/1.2.0-5.tar.gz";
    name = "1.2.0-5.tar.gz";
    sha256 = "737c4f9e26f6d623a907ceb87afc83ed25c6f41699e1176f6dec5fc6a2aa3373";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ecl-config ecl-license ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "These are a very simple version of some of the functions in ecl_converters
     suitable for firmware development. That is, there is no use of new,
     templates or exceptions.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
