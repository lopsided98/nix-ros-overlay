
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ecl-build, ecl-license }:
buildRosPackage {
  pname = "ros-lyrical-ecl-command-line";
  version = "1.2.1-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_core-release/archive/release/lyrical/ecl_command_line/1.2.1-6.tar.gz";
    name = "1.2.1-6.tar.gz";
    sha256 = "afb78e4782d4a969f97fdb6a4d608946370b95a7003c8b04affb1bbc69589f86";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ecl-build ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ecl-license ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Embeds the TCLAP library inside the ecl. This is a very convenient
     command line parser in templatised c++.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
