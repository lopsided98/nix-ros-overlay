
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ecl-build, ecl-license }:
buildRosPackage {
  pname = "ros-rolling-ecl-command-line";
  version = "1.2.1-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_core-release/archive/release/rolling/ecl_command_line/1.2.1-5.tar.gz";
    name = "1.2.1-5.tar.gz";
    sha256 = "34b455ae182426b18fa45336d8c8901c30a0422c49c3727bd646802859d6deed";
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
