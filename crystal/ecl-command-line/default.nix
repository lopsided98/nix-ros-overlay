
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ecl-license, ament-lint-common, ament-lint-auto, ecl-build, ament-cmake-gtest }:
buildRosPackage {
  pname = "ros-crystal-ecl-command-line";
  version = "1.0.1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/crystal/ecl_command_line/1.0.1-0.tar.gz";
    name = "1.0.1-0.tar.gz";
    sha256 = "b45934bc518ec3fb2db5679cc94ee22198ff0caa7bbb7302ee06f6faef9fa432";
  };

  buildType = "ament_cmake";
  buildInputs = [ ecl-license ecl-build ];
  checkInputs = [ ament-lint-common ament-cmake-gtest ament-lint-auto ];
  propagatedBuildInputs = [ ecl-license ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Embeds the TCLAP library inside the ecl. This is a very convenient
     command line parser in templatised c++.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
