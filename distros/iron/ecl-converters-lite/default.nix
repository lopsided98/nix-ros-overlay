
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ecl-config, ecl-license }:
buildRosPackage {
  pname = "ros-iron-ecl-converters-lite";
  version = "1.2.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_lite-release/archive/release/iron/ecl_converters_lite/1.2.0-4.tar.gz";
    name = "1.2.0-4.tar.gz";
    sha256 = "4fdd089725c70d1d70fa508aa9e17c29f104f11371b5197152f782bdcd2790f0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ecl-config ecl-license ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''These are a very simple version of some of the functions in ecl_converters
     suitable for firmware development. That is, there is no use of new,
     templates or exceptions.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
