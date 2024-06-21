
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ecl-build, ecl-license }:
buildRosPackage {
  pname = "ros-humble-ecl-command-line";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_core-release/archive/release/humble/ecl_command_line/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "7756daa951db56bae5f565e73eaea02fffb5182e3155838878828ec793d051bc";
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
